(in-package :ecocyc)

(defun object-table (object-list &optional (format :columns))
  (loop for x in object-list
      for fname = (get-frame-name x)
      do
	(ecase format
	  (:columns (format t "~35A ~A~%" fname (get-name-string x) ))
	  (:tab     (format t "~A	~A~%" fname (get-name-string x)))
	  (:space   (format t "~A ~A~%" fname (get-name-string x)))
	  ) )
  )


(defmacro tofile (filename &body body)
  `(with-open-file (file ,filename
		    :direction :output
		    :if-exists :supersede)
     (let ((*standard-output* file))
       ,@body) )
  )
