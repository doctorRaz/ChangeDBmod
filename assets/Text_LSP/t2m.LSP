(defun c:drz_t2m (/		nameset	  setlength namtxtrun txtrun
	      p_text	p_kord	  p_sloy    p_styl    p_ugol
	      p_heig	ugol	  deltX	    deltY     n_kord
	      spis_st
	     )
  (setq nameset (ssget "_:L" '((0 . "TEXT"))))
  (setq setlength (sslength nameset))
  (setq i -1)
  (repeat setlength
    (setq i (1+ i))
    (setq namtxtrun (ssname nameset i))
    (setq txtrun (entget namtxtrun))
    (setq p_text (assoc 1 txtrun))
    (setq p_kord (cdr (assoc 10 txtrun)))
    (setq p_sloy (assoc 8 txtrun))
    (setq p_styl (assoc 7 txtrun))
    (setq p_ugol (assoc 50 txtrun))
    (setq p_heig (assoc 40 txtrun))
    (setq ugol (- (* 2 pi) (cdr p_ugol)))
    (setq deltX (* (cdr p_heig) (sin ugol)))
    (setq deltY (* (cdr p_heig) (cos ugol)))
    (setq n_kord (list 10
		       (+ (car p_kord) deltX)
		       (+ (cadr p_kord) deltY)
		       (last p_kord)
		 )
    )
    (setq spis_st (list	'(0 . "MTEXT")	 '(100 . "AcDbEntity")
			p_sloy		 '(100 . "AcDbMText")
			n_kord		 p_heig
			p_text		 p_ugol
			p_styl
		       )
    )
    (entmake spis_st)
    (entdel namtxtrun)
  )
)

