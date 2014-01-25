(ql:quickload :alexandria)    

(setq *hash* nil)

(defun add-function-name (name) 
  (let ((count (gethash name *hash*)))
    (if count 
	(incf (gethash name *hash*))
	(setf (gethash name *hash*) 1))))
	

(defun find-repeated-function-names ()
  (setf *hash* (make-hash-table))

  (alexandria:with-input-from-file (s "/home/bbeer/work/external/swig-bullet/swigbullet.lisp")
    (loop for sym = (read s nil nil)
	 while sym
	 do (when (equal (first sym) 'cffi:defcfun)
	      (add-function-name (cadadr sym)))))

  (loop for key in (alexandria:hash-table-keys *hash*)
       for value = (gethash key *hash*)
       if (> value 1)
       collect (cons key value)))
