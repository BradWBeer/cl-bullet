;;;; cl-bullet.asd

(asdf:defsystem #:cl-bullet
  :serial t
  :description "Describe cl-bullet here"
  :author "Brad Beer (WarWeasle)"
  :license "MIT"
  :depends-on (#:cffi)
  :components 
  ((:module "bindings"
	    :serial t
	    :components
	    ((:file "package")
	     (:file "library")
	     (:file "bullet-bindings")))
   (:file "package")
   (:file "cl-bullet")))

