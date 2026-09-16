(defun c:drz_BM ( / a da s h text_nabor text_object fill backgroundfill b d contour )
  
 (initget "Да Нет  0 1 2 3")
 (setq backgroundfill(getkword  "\n Заливка фон MTEXTa (Да,Нет) <Да>"))
 
(cond 
	((or (= backgroundfill nil) (= backgroundfill "Да") (= backgroundfill 3) )
	(setq backgroundfill 3)
	)
	
	((or (= backgroundfill 0) (= backgroundfill "Нет") (= backgroundfill "0"))
	(setq backgroundfill 0)
	)
	
	(T 
	(setq  backgroundfill  (atoi backgroundfill))
	)
)   

(cond 
 		((or(= backgroundfill 3)  (= backgroundfill 1)) 
		
			(initget "Да Нет 0 1")
			(setq contour(getkword  "\n Контур MTEXTa (Да,Нет) <Нет>"))
			
			(cond 
				((or (= contour nil) (= contour "Нет") (= contour "0") )
				(setq contour 0)
				)
				
				((or (= contour "1") (= contour "Да"))
				(setq contour 16)
				)
			)
									
			(setq fill (getreal "\n Масштаб заливки фона <1.1>:"))
			(if (= fill nil) (setq fill 1.1) (setq  fill fill))	
			
			)
		
		
				
		(T (princ "\n Без Заливки MTEXTa \n ")
			(setq  fill 0)
			(setq contour 0)
		)
		
)
 
  (princ "\n Выберите объекты МTexta: ")
(setq text_nabor (ssget '((-4 . "<OR") (0 . "TEXT") (0 . "MTEXT") (-4 . "OR>"))) number 0)
	(while (< number (sslength text_nabor))
	(setq text_object (entget (ssname text_nabor number)))
		
	(BounderyMText text_object backgroundfill fill contour)
	
    (setq text_object nil number (+ number 1))
	)
	
(princ "\n Выполнено!")
(princ )
)

(defun BounderyMText (text_object backgroundfill fill contour / da s h b d  )	
		(setq da text_object)
		(if (= (cdr (assoc 0 da)) "MTEXT") 
			(progn
			(setq s (*(cdr (assoc 42 da)) 1.001) h (cdr (assoc 43 da))  b (cdr (assoc 63 da))  d (cdr (assoc 421 da)))
			(if s (setq da (subst (cons 41 s) (assoc 41 da) da)))
			(if h (setq da (subst (cons 46 h) (assoc 46 da) da)))
			(setq da (append da (list (cons 90 (+ contour backgroundfill)))))
			(setq da (append da (list (cons 45 fill))))
			(setq da (subst (cons 63 255) (assoc 63 da) da)) ;  цвет заливки 255 белый
			;(setq da (subst (cons 421 0) (assoc 421 da) da))
	(entmod da)
		)
	)
)

