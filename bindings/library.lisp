(in-package #:cl-bullet-bindings)


(push (CONCATENATE 'STRING
		   (DIRECTORY-NAMESTRING
		    (ASDF/SYSTEM:SYSTEM-RELATIVE-PATHNAME :CL-BULLET
							  "cl-bullet.asd"))
		   "creation_tools/")
       cffi:*foreign-library-directories*)

(cffi:define-foreign-library :libBulletLinearMath
  (cffi-features:darwin  "libLinearMath.dylib")
  (cffi-features:unix    "libLinearMath.so")
  (cffi-features:windows "libLinearMath.dll"))

(cffi:load-foreign-library :libBulletLinearMath)


(cffi:define-foreign-library :libBulletCollision
  (cffi-features:darwin  "libBulletCollision.dylib")
  (cffi-features:unix    "libBulletCollision.so")
  (cffi-features:windows "libBulletCollision.dll"))

(cffi:load-foreign-library :libBulletCollision)

(cffi:define-foreign-library :libBulletDynamics
  (cffi-features:darwin  "libBulletDynamics.dylib")
  (cffi-features:unix    "libBulletDynamics.so")
  (cffi-features:windows "libBulletDynamics.dll"))

(cffi:load-foreign-library :libBulletDynamics)

(cffi:define-foreign-library :libBulletSoftBody
  (cffi-features:darwin  "libBulletSoftBody.dylib")
  (cffi-features:unix    "libBulletSoftBody.so")
  (cffi-features:windows "libBulletSoftBody.dll"))

(cffi:load-foreign-library :libBulletSoftBody)


(cffi:define-foreign-library :libLispBullet
  (cffi-features:darwin  "lispBullet.dylib")
  (cffi-features:unix    "lispBullet.so")
  (cffi-features:windows "lispBullet.dll"))

(cffi:load-foreign-library :libLispBullet)
  
