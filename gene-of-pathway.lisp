(in-package :ecocyc)

(defun object-table (object-list)
  (loop for x in object-list
      for fname = (get-frame-name x)
      for name_pt = (get-name-string x)
      for genes = (genes-of-pathway x)
      do (setq *names* '())
      do (setq *ids* '())
      (loop for gene in genes
          do (setq name (get-name-string gene))
          do (setq id (get-frame-name gene))
          do (push name *names*)
          do (push id *ids*)
       )
      do  (format t "~A;~A;~{~A~^ ~};~{~A~^ ~}~%" fname name_pt *names* *ids*)
  )
)


(defmacro tofile (filename &body body)
  `(with-open-file (file ,filename
		    :direction :output
		    :if-exists :supersede)
     (let ((*standard-output* file))
       ,@body) )
  )
