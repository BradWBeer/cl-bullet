(ql:quickload :cl-glfw)
(ql:quickload :clinch)
(ql:quickload :cl-bullet)

(defvar last-time)

(defvar shader)
(defvar shape-color)
(defvar ground-color)

;; color is the color entity
(defvar vertex-shader-source
      "
#version 120

uniform vec3 color;
varying   vec4 fragmentColor;
uniform   vec3 ambientLight;
uniform   vec3 lightDirection;
uniform   vec3 lightIntensity;

void main() {
            gl_Position = ftransform();


            float power = max(dot(-lightDirection,
                                  normalize(gl_NormalMatrix * gl_Normal)),
                              0);
            fragmentColor = vec4((color * ambientLight + (lightIntensity * power)), 1.0);
        }")


(defvar fragment-shader-source
      "
#version 120
varying vec4 fragmentColor;
void main() {
            gl_FragColor = fragmentColor;
        }")



(defvar viewport)
(defvar projection-matrix)
(defvar node)
(defvar shape-node)
(defvar ground-node)
(defvar sphere-alist)
(defvar plane-alist)

(defvar shape)
(defvar shape-point-buffer)
(defvar shape-indices-buffer)
(defvar shape-normal-buffer)

(defvar ground)
(defvar ground-point-buffer)
(defvar ground-indices-buffer)
(defvar ground-normal-buffer)

;; ambientLight   The lowest amount of light to use. An RGB value.
(defvar ambientLight '(.2 .2 .2))

;; lightIntensity The maximum power of the light.    An RGB value.
(defvar lightIntensity '(.8 .8 .8))

;; lightDirection The direction of the light source. An XYZ normal value.
(defvar lightDirection '(1 5 1))


;; bullet physics objects...
(defvar broadphase)
(defvar collision-Configuration)
(defvar dispatcher)
(defvar solver)
(defvar dynamics-World)
(defvar Ground-Shape)
(defvar Fall-Shape)
(defvar ground-Motion-State)
(defvar ground-rigid-body-construction-info)
(defvar ground-rigid-body)
(defvar fall-Motion-State)
(defvar fall-rigid-body-construction-info)
(defvar fall-rigid-body)
(defvar transform)


(defun init-bullet () 
  
  (setf broadphase (make-instance 'cl-bullet::dbvt-broadphase))
  (setf collision-Configuration (make-instance 'cl-bullet::Default-Collision-Configuration))
  (setf dispatcher (make-instance 'cl-bullet::collision-dispatcher :configuration collision-Configuration))
  (setf solver (make-instance 'cl-bullet::Sequential-Impulse-Constraint-Solver))
  (setf dynamics-World (make-instance 'cl-bullet::Discrete-Dynamics-World
				      :dispatcher dispatcher
				      :pairCache broadphase
				      :constraintSolver solver
				      :collisionConfiguration collision-Configuration))
  (setf transform (make-instance 'cl-bullet::transform))
  

  (cl-bullet::with-destroy* ((gravity (make-instance 'cl-bullet::vector3 :x 0 :y -9.8 :z 0)))
    (cl-bullet::set-gravity dynamics-World gravity))
  
  (cl-bullet::with-destroy* ((normal (make-instance 'cl-bullet::vector3 :x 0 :y 1 :z 0)))
    (setf ground-shape (make-instance 'cl-bullet::Static-Plane-Shape :normal normal :constant 0)))
  
  (setf Fall-Shape (make-instance 'cl-bullet::Sphere-Shape :radius 1))
  
  (cl-bullet::with-destroy*
      ((Quaternion (make-instance 'cl-bullet::Quaternion :values '(0 0 0 1)))
       (vector     (make-instance 'cl-bullet::Vector3 :x 0 :y 0 :z 0))
       (transform  (make-instance 'cl-bullet::Transform
				  :quaternion quaternion
				  :vector vector)))
    (setf Ground-Motion-State (make-instance 'cl-bullet::Default-Motion-State :start transform)))
  
  (setf ground-rigid-body-construction-info
	(make-instance 'cl-bullet::rigid-body-construction-info
		       :mass 0
		       :motion-state  Ground-Motion-State
		       :collision-shape Ground-Shape))

   (cl-bullet::set-restitution ground-rigid-body-construction-info .5)
   (print (cl-bullet::get-restitution ground-rigid-body-construction-info))
  
   (cl-bullet::set-friction ground-rigid-body-construction-info .5)
   (cl-bullet::set-rolling-Friction ground-rigid-body-construction-info .5)

  
  (setf ground-rigid-body (make-instance 'cl-bullet::Rigid-Body :construction-info ground-rigid-body-construction-info))
  (cl-bullet::add-rigid-body dynamics-world ground-rigid-body)
  
  
  (cl-bullet::with-destroy* ((Quaternion (make-instance 'cl-bullet::Quaternion :values '(0 0 0 1)))
			     (vector     (make-instance 'cl-bullet::Vector3 :x 0 :y 50 :z 0))
			     (transform  (make-instance 'cl-bullet::Transform
							:quaternion quaternion
							:vector vector))
			     (fall-inertia (make-instance 'cl-bullet::vector3 :x 0 :y 0 :z 0)))
    
    (setf fall-motion-state (make-instance 'cl-bullet::default-motion-state :start transform))
    
    (cl-bullet::calculate-local-inertia Fall-Shape 1 fall-inertia)
    (setf fall-rigid-body-construction-info
	  (make-instance 'cl-bullet::Rigid-Body-Construction-Info
			 :mass 1
			 :motion-state fall-motion-state
			 :collision-shape fall-shape
			 :local-inertia fall-inertia))

    (cl-bullet::set-restitution fall-rigid-body-construction-info 1.0)
    (print (cl-bullet::get-restitution fall-rigid-body-construction-info))
	
    (cl-bullet::set-friction fall-rigid-body-construction-info .5)
    (cl-bullet::set-rolling-Friction fall-rigid-body-construction-info .5)

    

    (setf fall-rigid-body (make-instance 'cl-bullet::Rigid-Body :construction-info fall-rigid-body-construction-info))
    (cl-bullet::add-rigid-body dynamics-world fall-rigid-body)))

  
  
  
  

(defun init ()

  (setf last-time nil)

  (init-bullet)

  (setf sphere-alist
	(alexandria:with-input-from-file (s "/home/bbeer/work/lisp/sphere.lisp")
	  (read s)))

  (setf plane-alist
	(alexandria:with-input-from-file (s "/home/bbeer/work/lisp/plane.lisp")
	  (read s)))


  (setf shape-color '(1 0 0))
  (setf ground-color '(.5 .5 .5))
  

  (setf viewport (make-instance 'clinch:viewport))
  (glfw:set-window-size-callback #'window-size-callback)

  (gl:enable :blend :depth-test :line-smooth :point-smooth :polygon-smooth :texture-2d :cull-face)
  (%gl:blend-func :src-alpha :one-minus-src-alpha)


  (setf node (make-instance 'clinch:node))
  (clinch:translate node  0 -15 -25)
  ;;(clinch:rotate node (clinch:degrees->radians -25) 1 0 0)


  (setf shape-node (make-instance 'clinch:node :parent node))
  (clinch:translate shape-node 0 50 0)

  (setf shader (make-instance 'clinch:shader
				   :vertex-shader-text vertex-shader-source
				   :fragment-shader-text fragment-shader-source
				   :uniforms   '(("color"          :float)
						 ("ambientLight"   :float)
						 ("lightDirection" :float)
						 ("lightIntensity" :float))))
  
  
  (setf shape-point-buffer 
	(make-instance 'clinch:buffer 
		       :Stride 3
		       :data (cadr (assoc 'points sphere-alist))))

  (setf shape-indices-buffer 
	(make-instance 'clinch:buffer :qtype :unsigned-int
		       :target :element-array-buffer
		       :Stride 1
		       :data (cadr (assoc 'index sphere-alist))))

  (setf shape-normal-buffer 
	(make-instance 'clinch:buffer
		       :Stride 3
		       :data (cadr (assoc 'normals sphere-alist))))

  (setf shape 
	(make-instance 'clinch:entity
		       :parent shape-node
		       :shader  shader
		       :indexes shape-indices-buffer 
		       :values (list (list :vertices shape-point-buffer)
				     (list :uniform "color" shape-color)
				     (list :normals  shape-normal-buffer)
				     (list :uniform "ambientLight" ambientLight)
				     (list :uniform "lightIntensity" lightIntensity)
				     (list :uniform "lightDirection" lightDirection))))

  (setf ground-node (make-instance 'clinch:node :parent node))
  (clinch:scale ground-node 100 100 100)
  (clinch:translate ground-node 0 0 -1)
  (clinch:rotate ground-node (clinch:degrees->radians -90) 1 0 0)

  (setf ground-point-buffer 
	(make-instance 'clinch:buffer 
		       :Stride 3
		       :data (cadr (assoc 'points plane-alist))))
  
  (setf ground-indices-buffer 
	(make-instance 'clinch:buffer :qtype :unsigned-int
		       :target :element-array-buffer
		       :Stride 1
		       :data (cadr (assoc 'index plane-alist))))
  
  (setf ground-normal-buffer 
	(make-instance 'clinch:buffer
		       :Stride 3
		       :data (cadr (assoc 'normals plane-alist))))
  
  (setf ground 
	(make-instance 'clinch:entity
		       :parent ground-node
		       :shader  shader
		       :indexes ground-indices-buffer 
		       :values (list (list :vertices ground-point-buffer)
				     (list :uniform "color" ground-color)
				     (list :normals  ground-normal-buffer)
				     (list :uniform "ambientLight" ambientLight)
				     (list :uniform "lightIntensity" lightIntensity)
				     (list :uniform "lightDirection" lightDirection)))))

(defun main-loop ()
  ;;(setf alpha (mod (+ alpha 1/60) 1.1))
  (let* ((now (glfw:get-time)))
    (when last-time

      (cl-bullet::step-simulation dynamics-world (coerce (- now last-time) 'single-float) 10)
      (cl-bullet::get-world-transform fall-motion-state transform)
      (setf (clinch:transform shape-node) (cl-bullet::get-opengl-matrix transform))
      )


    (setf last-time now))
    
  
    
  (gl:clear-color 0.0 0.0 0.0 0.0)
  (gl:clear :color-buffer-bit :depth-buffer-bit)
  (clinch:render node)
  
  ;(format t "Current: ~A~%" (clinch:current-transform shape-node))
  ;(format t "Current worldnode: ~A~%" (clinch:current-transform node))
  )

  
(defun clean-up ()

  (cl-bullet::destroy broadphase)
  (cl-bullet::destroy collision-Configuration)
  (cl-bullet::destroy dispatcher)
  (cl-bullet::destroy solver)
  ;(cl-bullet::destroy dynamics-World)
  (cl-bullet::destroy Ground-Shape)
  (cl-bullet::destroy Fall-Shape)
  (cl-bullet::destroy ground-Motion-State)
  (cl-bullet::destroy ground-rigid-body-construction-info)
  (cl-bullet::destroy ground-rigid-body)
  (cl-bullet::destroy fall-Motion-State)
  (cl-bullet::destroy fall-rigid-body-construction-info)
  (cl-bullet::destroy fall-rigid-body)
  (cl-bullet::destroy transform)
  
  (clinch:unload shape-normal-buffer)
  (clinch:unload shape-point-buffer)
  (clinch:unload shape-indices-buffer)

  (clinch:unload ground-normal-buffer)
  (clinch:unload ground-point-buffer)
  (clinch:unload ground-indices-buffer)
  
  (clinch:unload shader))

(defun window-size-callback (width height)
  (clinch::quick-set viewport 0 0 width height)
  (clinch::render viewport)

  (setf projection-matrix (clinch::make-perspective-transform (clinch:degrees->radians 45) (/ width height) .1 100))
  

  (gl:matrix-mode :projection)
  (gl:load-matrix projection-matrix)
  (gl:matrix-mode :modelview)
  (gl:load-identity))


(defun start ()
  (declare (optimize (speed 3)))
  (glfw:do-window (:title "Tutorial 1"
			  :redbits 8
			  :greenbits 8
			  :bluebits 8
			  :alphabits 8
			  :depthbits 16)
      ((init))
    
    (main-loop))
  
  ;; End Program
  (clean-up))
