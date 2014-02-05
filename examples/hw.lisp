(ql:quickload :cl-bullet)

(cl-bullet::bullet-let*
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
     (Fall-Shape   nil))

  
  
  (cl-bullet::bullet-let* ((gravity (make-instance 'cl-bullet::vector3 :x 0 :y -9.8 :z 0)))
    (cl-bullet::set-gravity dynamics-World gravity))

  (cl-bullet::bullet-let* ((normal (make-instance 'cl-bullet::vector3 :x 0 :y 1 :z 0)))
    (setf ground-shape (make-instance 'cl-bullet::Static-Plane-Shape :normal normal :constant 0)))
  
  (setf Fall-Shape (make-instance 'cl-bullet::Sphere-Shape :radius 1))

  (cl-bullet::bullet-let*
      ((Quaternion (make-instance 'cl-bullet::Quaternion :values '(0 0 0 1)))
       (vector     (make-instance 'cl-bullet::Vector3 :x 0 :y -1 :z 0))
       (transform  (make-instance 'cl-bullet::Transform
				  :quaternion quaternion
				  :vector vector))
       (groundMotionState (make-instance 'cl-bullet::Default-Motion-State :start transform)))

    (print groundMotionState))

      

  )
