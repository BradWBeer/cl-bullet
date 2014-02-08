(ql:quickload :cl-bullet)

(cl-bullet::with-destroy*
    ((broadphase (make-instance 'cl-bullet::dbvt-broadphase))
     (collision-Configuration (make-instance 'cl-bullet::Default-Collision-Configuration))
     (dispatcher (make-instance 'cl-bullet::collision-dispatcher :configuration collision-Configuration))
     (solver (make-instance 'cl-bullet::Sequential-Impulse-Constraint-Solver))
     (dynamics-World (make-instance 'cl-bullet::Discrete-Dynamics-World
				    :dispatcher dispatcher
				    :pairCache broadphase
				    :constraintSolver solver
				    :collisionConfiguration collision-Configuration))
     (Ground-Shape nil)
     (Fall-Shape   nil)
     (ground-Motion-State nil)
     (ground-rigid-body-construction-info)
     (ground-rigid-body)
     (fall-Motion-State nil)
     (fall-rigid-body-construction-info)
     (fall-rigid-body)
     (transform (make-instance 'cl-bullet::transform)))




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
    (setf fall-rigid-body (make-instance 'cl-bullet::Rigid-Body :construction-info fall-rigid-body-construction-info))
    (cl-bullet::add-rigid-body dynamics-world fall-rigid-body))

  
  (dotimes (i 300)
    (cl-bullet::step-simulation dynamics-world 1/60 10)
    
    (cl-bullet::get-world-transform fall-motion-state transform)
    
    (print (cl-bullet::get-y (cl-bullet::get-origin transform)))
    ))
    
			