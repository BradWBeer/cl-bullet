;;;; cl-bullet.lisp

(in-package #:cl-bullet)

(defmacro bullet-let ((&rest objects) &body body)
  `(let ,objects
     (unwind-protect 
	  (progn ,@body)
       (progn 
	 ,@(loop for (name . val) in (reverse objects)
	      collect `(cl-bullet::destroy ,name))))))

(defmacro bullet-let* ((&rest objects) &body body)
  `(let* ,objects
     (unwind-protect 
	  (progn ,@body)
       (progn 
	 ,@(loop for (name . val) in (reverse objects)
	      collect `(cl-bullet::destroy ,name))))))



(defmacro set-float (var val) 
  `(setf (cffi:mem-ref ,var :float) (float ,val)))




(cl:defclass c-class ()
  ((ff-pointer :reader ff-pointer
	       :initarg :ff-pointer
	       :initform nil)))


(defclass Quad-Word  (c-class) ())

(defclass Quaternion (Quad-Word) ())

(defclass vector3 (c-class) ())

(defclass vector4 (vector3) ())

(defclass Transform (c-class) ())

(defclass Matrix3x3 (c-class) ())


(defclass Broadphase-Interface (c-class) ())

(defclass Dbvt-Broadphase (Broadphase-Interface) ())

(defclass Motion-State (c-class) ())

(defclass Default-Motion-State (Motion-State) ())

(defclass Collision-Object (c-class) ()) ;; !!!!

(defclass Rigid-Body (Collision-Object) ())

(defclass Overlapping-Pair-Callback (c-class) ())

(defclass Overlapping-Pair-Cache (Overlapping-Pair-Callback) ())

(defclass Soft-Body-Solver (c-class) ())

(defclass Collision-Algorithm (c-class) ())

(defclass Default-Soft-Body-Solver (btSoftBodySolver) ())

(defclass Soft-Body-Concave-Collision-Algorithm  (Collision-Algorithm) ())

(defclass Soft-Body (Collision-Object) ())

(defclass Collision-Shape (c-class) ())

(defclass Concave-Shape (Collision-Shape) ())

(defclass Static-Plane-Shape (Concave-Shape) ())

(defclass Plane-Shape (Static-Plane-Shape) ())

(defclass Soft-Body-Collision-Shape  (Concave-Shape) ())

(defclass Convex-Shape (c-class) ())

(defclass Convex-Internal-Shape (Convex-Shape) ())

(defclass Sphere-Shape (Convex-Internal-Shape) ())

(defclass Soft-Cluster-CollisionShape  (Convex-Internal-Shape) ())

(defclass Collision-Configuration (c-class) ())

(defclass Default-Collision-Configuration (Collision-Configuration) ())

(defclass Soft-Body-Rigid-Body-Collision-Configuration  (Default-Collision-Configuration) ())

(defclass Vertex-Buffer-Descriptor (c-class) ())

(defclass CPU-Vertex-Buffer-Descriptor (Vertex-Buffer-Descriptor) ())

(defclass Collision-Algorithm (c-class) ())

(defclass Soft-Rigid-Collision-Algorithm (Collision-Algorithm) ())

(defclass Dynamics-World (c-class) ())

(defclass Discrete-Dynamics-World (Dynamics-World) ())

(defclass Soft-Rigid-Dynamics-World (Discrete-Dynamics-World) ())

(defclass Collision-Algorithm (c-class) ())

(defclass Soft-Soft-Collision-Algorithm (Collision-Algorithm) ())

(defclass Serializer (c-class) ())

(defclass  Default-Serializer (Serializer) ())


(defclass dispatcher (c-class) ())
(defclass collision-dispatcher (dispatcher) ())

(defclass Constraint-Solver (c-class) ())
(defclass Sequential-Impulse-Constraint-Solver (Constraint-Solver) ())

(cl:defmethod initialize-instance :after ((this vector3) &key (x 0) (y 0) (z 0))
  (unless (slot-value this 'ff-pointer)

    (cffi:with-foreign-objects ((xx :float)
				(yy :float)
				(zz :float))
      (set-float xx x)
      (set-float yy y)
      (set-float zz z)
      
      (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btVector3 xx yy zz)))))

(cl:defmethod destroy ((this vector3) &key)
  (cl-bullet-bindings::delete_btVector3 (slot-value this 'ff-pointer)))

;; (defmethod (setf x) (new-val (this vector3))
;;   (cl-bullet-bindings::btVector3_setX (slot-value this 'ff-pointer) new-val)
;;   new-val)

(cl:defmethod initialize-instance :after ((this vector4) &key (x 0) (y 0) (z 0) (w 0))
  (unless (slot-value this 'ff-pointer)

    (cffi:with-foreign-objects ((xx :float)
				(yy :float)
				(zz :float)
				(ww :float))
      (set-float xx x)
      (set-float yy y)
      (set-float zz z)
      (set-float ww w)
      
      (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btVector4 xx yy zz ww)))))

(cl:defmethod destroy ((this vector4) &key)
  (cl-bullet-bindings::delete_btVector4 (slot-value this 'ff-pointer)))


;; cbvt-broadphase
(cl:defmethod initialize-instance :after ((obj dbvt-broadphase) &key)
  (setf (slot-value obj 'ff-pointer) (cl-bullet-bindings::new_btDbvtBroadphase)))


;; (cffi:defcstruct btBroadphaseAabbCallback
;; 	(process :pointer))

;; (cffi:defcstruct btBroadphaseRayCallback
;; 	(m_rayDirectionInverse :pointer)
;; 	(m_signs :pointer)
;; 	(m_lambda_max :float))

;; (cl:defmethod initialize-instance :after ((obj dbvt-broadphase) (pc Overlapping-Pair-Cache) &key)
;;   (setf (slot-value obj 'ff-pointer) (cl-bullet-bindings::new_btDbvtBroadphase_pairche (ff-pointer p)))j)

(cl:defmethod initialize-instance :after ((this dbvt-broadphase) &key)
  (unless (slot-value this 'ff-pointer)
    (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btDbvtBroadphase))))

(cl:defmethod destroy ((this dbvt-broadphase) &key)
  (cl-bullet-bindings::delete_btDbvtBroadphase (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))

;; 
(cl:defmethod initialize-instance :after ((this Default-Collision-Configuration) &key)
  (unless (slot-value this 'ff-pointer)
    (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btDefaultCollisionConfiguration_0))))

  
(cl:defmethod destroy ((this Default-Collision-Configuration) &key)
  (cl-bullet-bindings::delete_btDefaultCollisionConfiguration (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))


(cl:defmethod initialize-instance :after ((this collision-dispatcher) &key configuration)
  (unless (slot-value this 'ff-pointer)
    (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btCollisionDispatcher (slot-value configuration 'ff-pointer)))))

  
(cl:defmethod destroy ((this collision-dispatcher) &key)
  (cl-bullet-bindings::delete_btCollisionDispatcher (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))


(cl:defmethod initialize-instance :after ((this Sequential-Impulse-Constraint-Solver) &key)
  (unless (slot-value this 'ff-pointer)
    (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btSequentialImpulseConstraintSolver))))

  
(cl:defmethod destroy ((this Sequential-Impulse-Constraint-Solver) &key)
  (cl-bullet-bindings::delete_btCollisionDispatcher (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))


(cl:defmethod initialize-instance :after ((this Discrete-Dynamics-World) &key dispatcher pairCache constraintSolver collisionConfiguration)
  (unless (slot-value this 'ff-pointer)
    (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btDiscreteDynamicsWorld (slot-value dispatcher 'ff-pointer)
											 (slot-value pairCache 'ff-pointer)
											 (slot-value constraintSolver 'ff-pointer)
											 (slot-value collisionConfiguration 'ff-pointer)))))


(cl:defmethod set-gravity ((this Discrete-Dynamics-World) (vector vector3))
  (cl-bullet-bindings::btDiscreteDynamicsWorld_setGravity (slot-value this 'ff-pointer)
							  (slot-value vector 'ff-pointer)))


(cl:defmethod get-gravity ((this Discrete-Dynamics-World))
  (make-instance 'cl-bullet::vector3
		 :ff-pointer (cl-bullet-bindings::btDiscreteDynamicsWorld_getGravity (slot-value this 'ff-pointer))))
							  

  
(cl:defmethod destroy ((this Discrete-Dynamics-World) &key)
  (cl-bullet-bindings::delete_btDiscreteDynamicsWorld (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))


(cl:defmethod initialize-instance :after ((this Static-Plane-Shape) &key normal (constant 0))
  (unless (slot-value this 'ff-pointer)
    (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btStaticPlaneShape (slot-value normal 'ff-pointer)
										     (float constant)))))

(cl:defmethod destroy ((this Static-Plane-Shape) &key)
  (cl-bullet-bindings::delete_btStaticPlaneShape (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))

(cl:defmethod initialize-instance :after ((this Sphere-Shape) &key radius)
  (unless (slot-value this 'ff-pointer)
    (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btSphereShape (float radius)))))

(cl:defmethod destroy ((this Sphere-Shape) &key)
  (cl-bullet-bindings::delete_btSphereShape (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))


(cl:defmethod initialize-instance :after ((this Quaternion) &key values angle axis yaw pitch roll)
  (unless (slot-value this 'ff-pointer)

    (cond ((not (or values angle axis yaw pitch roll)) (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btQuaternion_default)))

	  (values (if (= (length values) 4)
		      (cffi:with-foreign-objects ((xx :float)
						  (yy :float)
						  (zz :float)
						  (ww :float))
			(set-float xx (first values))
			(set-float yy (second values))
			(set-float zz (third values))
			(set-float ww (fourth values))

			(setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btQuaternion_from_4btScalars xx yy zz ww)))
		      (error "Incorrect number of values for Quaternion!")))
	  
	  ((and angle axis)
	   (cffi:with-foreign-object (x :float)
	     (set-float x angle)
	     
	   (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btQuaternion_from_btVector_and_btScalar (slot-value axis 'ff-pointer)
													   angle))))
	  ((and yaw pitch roll) 
	   (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btQuaternion_from_yaw_pitch_and_roll yaw pitch roll)))
	  
	  (t (error "Could not create Quaternion from data!")))))
	   
			 

(cl:defmethod destroy ((this Quaternion) &key)
  (cl-bullet-bindings::delete_btQuaternion (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))


(cl:defmethod initialize-instance :after ((this Transform) &key quaternion vector matrix transform)
  (unless (slot-value this 'ff-pointer)
    (cond (transform (setf (slot-value this 'ff-pointer)
			   (cl-bullet-bindings::new_btTransform_from_btMatrix (slot-value transform 'ff-pointer))))
	  (quaternion (if vector
			  (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btTransform_from_btQuaternion_and_btVector
							       (slot-value quaternion 'ff-pointer)
							       (slot-value vector 'ff-pointer)))
			  (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btTransform_from_btQuaternion (slot-value quaternion 'ff-pointer)))))
	  (matrix    (if vector
			 (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btTransform_from_btMatrix_and_btVector
							       (slot-value matrix 'ff-pointer)
							       (slot-value vector 'ff-pointer)))
			 (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btTransform_from_btMatrix (slot-value matrix 'ff-pointer)))))
	  ((not (or quaternion vector matrix transform)) (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btTransform_default)))
	  (t (error "Can not create Transform from information!")))))


(cl:defmethod destroy ((this Transform) &key)
  (cl-bullet-bindings::delete_btTransform (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))

(cl:defmethod initialize-instance :after ((this Matrix3x3) &key values quaternion matrix)
  (unless (slot-value this 'ff-pointer)

    (cond (values (if (eql (length values) 9)
		      (setf (slot-value this 'ff-pointer) (apply #'cl-bullet-bindings::new_btMatrix3x3 (map 'list #'float values)))
		      (error "Incorrect number of values for 3x3 matrix!")))
	  (matrix     (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btMatrix3x3_from_btMatrix3x3 (slot-value matrix 'ff-pointer))))
	  (quaternion (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btMatrix3x3_from_btQuaternion (slot-value quaternion 'ff-pointer))))
	  (t          (setf (slot-value this 'ff-pointer) (cl-bullet-bindings::new_btMatrix3x3_default))))))


(cl:defmethod destroy ((this Matrix3x3) &key)
  (cl-bullet-bindings::delete_btSphereShape (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))


(cl:defmethod initialize-instance :after ((this Default-Motion-State) &key start center-of-mass)
  (unless (slot-value this 'ff-pointer)

    (cond ((and center-of-mass start) (setf (slot-value this 'ff-pointer)
					    (cl-bullet-bindings::new_btDefaultMotionState_default_2 (slot-value start 'ff-pointer)
												    (slot-value center-of-mass 'ff-pointer))))
	  ((and start (not center-of-mass)) (setf (slot-value this 'ff-pointer)
						  (cl-bullet-bindings::new_btDefaultMotionState_default_1 (slot-value start 'ff-pointer))))
	  ((not (or start center-of-mass))  (setf (slot-value this 'ff-pointer)
						  (cl-bullet-bindings::new_btDefaultMotionState_default_0)))
	  (t (error "Could not create Default-Motion-State!")))))



(cl:defmethod destroy ((this Default-Motion-State) &key)
  (cl-bullet-bindings::delete_btSphereShape (slot-value this 'ff-pointer))
  (setf (slot-value this 'ff-pointer) nil))
