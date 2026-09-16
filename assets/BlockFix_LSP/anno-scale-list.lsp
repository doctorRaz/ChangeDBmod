; Команда АнноСписок
; Выводит в командную строку список используемых в чертеже аннотативных масштабов.

(defun c:drz_anno-scale-list  (/        AnnoScaleList     block    object
                             edic     cdic     adic     item     prop
                             sdef     snam)
    (vl-load-com)
    (setq AnnoScaleList nil)
    (vlax-for block
              (vla-get-blocks
                  (vla-get-activedocument (vlax-get-acad-object)))
        (vlax-for object  block
            (if (and
                    (equal (vla-get-hasextensiondictionary object)
                           :vlax-true)
                    (setq edic (vla-getextensiondictionary object))
                    (< 0 (vla-get-count edic))
                    (setq cdic (vla-item edic 0))
                    (and
                        (vlax-property-available-p cdic 'name)
                        (equal (vla-get-name cdic)
                               "AcDbContextDataManager")
                        )
                    (< 0 (vla-get-count cdic))
                    (setq adic (vla-item cdic 0))
                    (and
                        (vlax-property-available-p adic 'name)
                        (equal (vla-get-name adic)
                               "ACDB_ANNOTATIONSCALES")
                        )
                    (< 0 (vla-get-count adic))
                    )
                (vlax-for item  adic
                    (setq prop (entget (vlax-vla-object->ename item)))
                    (if (and
                            (setq sdef (cdr (assoc 340 prop)))
                            (setq snam
                                     (cdr (assoc 300 (entget sdef))))
                            )
                        (if (member snam AnnoScaleList)
                            nil
                            (setq AnnoScaleList
                                     (append AnnoScaleList
                                             (list snam)
                                             )
                                  )
                            )
                        )
                    )
                )
            )
        )
    (foreach item AnnoScaleList (print item))
    (princ)
    )