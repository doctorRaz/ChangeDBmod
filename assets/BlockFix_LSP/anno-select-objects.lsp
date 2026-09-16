; Команда АнноВыбрать
; Выводит в командную строку список используемых в чертеже аннотативных масштабов.

(defun c:drz_anno-select-objects ( / nab scale a newnab)
  (setq nab (cadr (ssgetfirst)))
  (if (not nab) 
  (setq	nab (ssget "X"
		   (list
        ;'(0 . "DIMENSION")
			 (list -3 (list "AcadAnnotative")))))
			 )
	(setq nab (mapcar 'cadr (ssnamex nab)))  
  (setq nab (vl-remove-if-not '(lambda (a) (= (type a) 'ENAME)) nab))
  (if nab 
    (progn 
      (setq scale (getvar "CANNOSCALE"))
      (setq scale (getstring 'T (strcat "Введите искомый масштаб <" scale "> : ")))
      (if (equal scale "") (setq scale (getvar "CANNOSCALE")))
      (setq nab (vl-remove-if-not '(lambda (a)
        (member scale (get_anno_scales a)))  nab))
     ))
 (setq newnab (ssadd))
 (foreach a nab (setq newnab (ssadd a newnab)))
 (sssetfirst nil newnab) 
 (prin1)
 )


(defun get_anno_scales ( a / spk x)
  (setq spk (entget a '("*")))
  (if (and
    (setq spk (member '(102 . "{ACAD_XDICTIONARY") spk))
    (setq spk (member '(3 . "AcDbContextDataManager") (entget (cdadr spk))))
    (setq spk (member '(3 . "ACDB_ANNOTATIONSCALES") (entget (cdadr spk))))
    );and
    (progn
      (setq spk (entget (cdadr spk)))
      (setq spk (vl-remove-if-not '(lambda (x) (= (car x) 350)) spk))
      (mapcar '(lambda (x) 
        (setq x (entget (cdr (assoc 340 (entget (cdr x))))))
        (cdr (assoc 300 x))
        ) spk)))  
  )
