(vl-load-com)
; удалить метку геомаркера
(defun c:drz_GEOREMOVE ( / ext_dict vb va)
  (vl-load-com)
  (setq mes "Расширения в файле отсутствуют!")
  (setq va (vla-get-ModelSpace (vla-get-ActiveDocument (vlax-get-acad-object))))
  
  (if (equal (vla-get-hasextensiondictionary va) :vlax-true)
    (progn
      (setq ext_dict (vla-GetExtensionDictionary va))
	  (setq mes "Геоинформация отсутствует!")
      (vlax-for vb ext_dict
        (if (= (vla-get-ObjectName vb) "AcDbGeoData")
          (progn
            (vla-delete vb)
            (setq mes "Геоинформация удалена!")
          )))
	)
  )
  (print mes)
  (prin1)
  )
;;откл геомаркер
(defun C:drz_GEO_off () (setvar "GEOMARKERVISIBILITY" 0))

;;вкл геомаркер
(defun C:drz_GEO_on () (setvar "GEOMARKERVISIBILITY" 1))


