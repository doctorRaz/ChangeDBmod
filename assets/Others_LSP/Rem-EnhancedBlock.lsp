; удаляем с чертежа элементы вариативности от Кулика
(vl-load-com)
(defun c:drzK_rem_dynblock_sign (/ adoc ms dict record)
  (setq adoc (vla-get-activedocument (vlax-get-acad-object))
        ms   (vla-get-modelspace adoc)
  ) ;_ end of setq
  (if (and (equal (vla-get-hasextensiondictionary ms) :vlax-true)
           (setq dict (vlax-vla-object->ename (vla-getextensiondictionary ms)))
           (setq record (member '(3 . "ACAD_ENHANCEDBLOCK") (entget dict)))
           (setq record (cdr (assoc 360 record)))
      ) ;_ end of and
    (progn
      (vla-startundomark adoc)
      (entdel record)
      (vla-endundomark adoc)
    ) ;_ end of progn
  ) ;_ end of if
  (princ)
) ;_ end of defun

; удаляем с чертежа элементы вариативности от Эдуарда с сообщением о наличии /отсутствии
(defun c:drzE_rem_dynblock_sign ( / vdict dict)
	(vl-load-com)
	(setq vdict (vla-GetExtensionDictionary
		(vla-get-modelspace
			(vla-get-ActiveDocument
				(vlax-get-acad-object)))))
	(setq dict (vlax-vla-object->ename vdict))
	(if (dictsearch dict "ACAD_ENHANCEDBLOCK")
		(progn
		(dictremove dict "ACAD_ENHANCEDBLOCK")
		(alert "Удалена информация о элементах вариации!")
		)
		(alert "Отсутствует информация о элементах вариации!")
	)
	(prin1)
)

