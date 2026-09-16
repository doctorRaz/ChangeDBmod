; включает выключает видовые экраны во всем документе
; https://forum.dwg.ru/showthread.php?t=129706
; ==================================
(defun C:drz_vp_off	(/ lay obj id1)
  ;;выкл видовые экраны
  (vl-load-com)
  (vlax-for lay	(vla-get-layouts
		  (vla-get-activedocument (vlax-get-acad-object))
		) ;_ end of vla-get-layouts
    (setq id1 nil) ;_ ignore the first vp Пропускаем первый ВЭ
    (if	(eq :vlax-false (vla-get-modeltype lay))
      (progn (princ (strcat "\n*** Лист - " (vla-get-name lay) " ***"))
	     (vlax-for obj (vla-get-block lay) ; for each obj in layout
	       (if (and	(= (vla-get-objectname obj) "AcDbViewport")
			(vlax-write-enabled-p obj)
			id1 ;_Пропускаем первый ВЭ
		   ) ;_ end of and
		 (progn (vla-put-viewporton obj :vlax-false)) ;_ end of progn
	       ) ;_ end of if
	       (setq id1 t) ;_Пропускаем первый ВЭ
	     ) ;_ end of vlax-for
      ) ;_ end of progn
    ) ;_ end of if
  ) ;_ end of vlax-for
  (princ)
) ;_enddefun
;; ----------------------------
(defun C:drz_vp_on	(/ lay obj id1)
  ;;вкл видовые экраны
  (vl-load-com)
  (vlax-for lay	(vla-get-layouts
		  (vla-get-activedocument (vlax-get-acad-object))
		) ;_ end of vla-get-layouts
    (setq id1 nil) ;_ ignore the first vp Пропускаем первый ВЭ
    (if	(eq :vlax-false (vla-get-modeltype lay))
      (progn (princ (strcat "\n*** Лист - " (vla-get-name lay) " ***"))
	     (vlax-for obj (vla-get-block lay) ; for each obj in layout
	       (if (and	(= (vla-get-objectname obj) "AcDbViewport")
			(vlax-write-enabled-p obj)
			id1 ;_Пропускаем первый ВЭ
		   ) ;_ end of and
		 (progn (vla-put-viewporton obj :vlax-true)) ;_ end of progn
	       ) ;_ end of if
	       (setq id1 t) ;_Пропускаем первый ВЭ
	     ) ;_ end of vlax-for
      ) ;_ end of progn
    ) ;_ end of if
  ) ;_ end of vlax-for
  (princ)
) ;_enddefun

; ;-------------
; ;алиасы на русском
; ; -----------------
; ; включить
; (defun C:вов()
; (c:vp-on)
; )
; ; ----------
; ; отключить
; (defun C:воо()
; (c:vp-off)
; )