;;Рисует полилинию по границам ВЭ в модели
;;ViewPort Outline
(defun C:drz_VPO (/ adoc ss lst)
  (vl-load-com)
  (setq adoc (vla-get-activedocument (vlax-get-acad-object)))
  (if (= (getvar "tilemode") 0)
    (progn
      (if (= (getvar "cvport") 1)
        (progn
          (if (setq ss nil
                    ss (ssget '((0 . "VIEWPORT")))
              ) ;_ end of setq
            (setq lst (vl-remove-if 'listp (mapcar 'cadr (ssnamex ss))))
            (setq lst nil)
          ) ;_ end of if
        ) ;_ end of progn
        (setq lst
               (list
                 (vlax-vla-object->ename (vla-get-activepviewport adoc))
               ) ;_ end of list
        ) ;_ end of setq
      ) ;_ end of if
      (mapcar
        '(lambda (y / x ret)
           (setq x (entget y))
           (if (cdr (assoc 340 x))
             (setq ret (mapcar 'cdr
                               (vl-remove-if-not
                                 '(lambda (b) (= (car b) 10))
                                 (entget (cdr (assoc 340 x)))
                               ) ;_ end of vl-remove-if-not
                       ) ;_ end of mapcar
             ) ;_ end of setq
             (setq ret
                    (list
                      (list
                        (- (cadr (assoc 10 x)) (/ (cdr (assoc 40 x)) 2.))
                        (- (caddr (assoc 10 x))
                           (/ (cdr (assoc 41 x)) 2.)
                        ) ;_ end of -
                      ) ;_ end of list
                      (list
                        (+ (cadr (assoc 10 x)) (/ (cdr (assoc 40 x)) 2.))
                        (- (caddr (assoc 10 x))
                           (/ (cdr (assoc 41 x)) 2.)
                        ) ;_ end of -
                      ) ;_ end of list
                      (list
                        (+ (cadr (assoc 10 x)) (/ (cdr (assoc 40 x)) 2.))
                        (+ (caddr (assoc 10 x))
                           (/ (cdr (assoc 41 x)) 2.)
                        ) ;_ end of +
                      ) ;_ end of list
                      (list
                        (- (cadr (assoc 10 x)) (/ (cdr (assoc 40 x)) 2.))
                        (+ (caddr (assoc 10 x))
                           (/ (cdr (assoc 41 x)) 2.)
                        ) ;_ end of +
                      ) ;_ end of list
                    ) ;_ end of list
             ) ;_ end of setq
           ) ;_ end of if
           (vla-display (vlax-ename->vla-object y) :vlax-true) ;_Вклбючаем показ ВЭ
           (vla-put-mspace adoc :vlax-true) ;_Переходим в модель. Аналог  (command "_.mspace")
           (setvar "cvport" (cdr (assoc 69 x)))
           (setq ret (mapcar '(lambda (pt)
                                (setq pt (trans pt 3 2)
                                      pt (trans pt 2 1)
                                      pt (trans pt 1 0)
                                ) ;_ end of setq
                              ) ;_ end of lambda
                             ret
                     ) ;_ end of mapcar
           ) ;_ end of setq
           (setq ret (mapcar '(lambda (zz) (mapcar '+ zz '(0 0))) ret)) ;_Удаляем координату Z
           (setq ret (apply 'append ret))
           (vla-put-closed
             (vla-addlightweightpolyline
               (vla-get-modelspace adoc)
               (vlax-make-variant
                 (vlax-safearray-fill
                   (vlax-make-safearray
                     vlax-vbdouble
                     (cons 0 (- (length ret) 1))
                   ) ;_ end of vlax-Make-SafeArray
                   ret
                 ) ;_ end of vlax-SafeArray-Fill
               ) ;_ end of vlax-Make-Variant
             ) ;_ end of vla-AddLightWeightPolyline
             :vlax-true
           ) ;_ end of vla-Put-Closed
         ) ;_ end of lambda
        lst
      ) ;_ end of mapcar
      (if ss
        (vla-put-mspace ad :vlax-false)
      ) ;_ Переходим в лист. Аналог (command "._pspace"))
      (setq ss nil)
    ) ;_ end of progn
    (alert "Перейди в лист")
  ) ;_ end of if
) ;_ end of defun

; -----------
; алиас на русском
; аоказать в модели рамки ВЭ
; (defun c:впо()
; (C:VPO)
; )