; Ф-ция PurgeAllGroups
; Удаляет описание всех групп
; Аргумент [Тип]:
;   НЕТ
; Возвращает: Nil
  (defun PurgeAllGroups (/ grpList index grp)
  (setq grpList (dictsearch (namedobjdict) "ACAD_GROUP"))
  (setq index 1)
  (while (setq grp (nth index grplist))
    (if    (= (car grp) 3)
      (entdel (cdr (nth (+ index 1) grplist)))
    )
    (setq index (+ 1 index))
  )
  (princ))
; Ф-ция PurgeEmptyGroups
; Удаляет описание всех пустых групп
; Аргумент [Тип]:
;   Named = Тип [INT]
;       0 - только именованные группы
;       1 - только неименованные группы
;   t,nil - все группы
; Возвращает: Nil
(defun PurgeEmptyGroups ( named / grpList index grp egrp named_list e_list)
  ;;; Библиотечная ф-ция, возвращает multiple group code
(defun massoc (key alist / x nlist)
  (foreach x alist
    (if (eq key (car x))
      (setq nlist (cons (cdr x) nlist))
    ))
  (reverse nlist))
  (setq named_list '(0 1))
  (if (member named named_list)(setq named_list (list named)))
  (setq grpList (dictsearch (namedobjdict) "ACAD_GROUP"))
  (setq index 1)
  (while (setq grp (nth index grplist))
    (if    (= (car grp) 3)
      (progn
    (setq egrp (entget (cdr (nth (+ index 1) grplist))))
    (if (member (cdr (assoc 70 egrp)) named_list)
      (progn
        (setq e_list (massoc 340 egrp))
        (if(not (vl-member-if 'entget e_list))
          (entdel (cdr (nth (+ index 1) grplist)))
          )
        )
      )
    )
      )
    (setq index (+ 1 index))
  )
  (princ))
; Ф-ция PurgeAllUnNamedGroups
; Удаляет описание всех анонимных групп *Annn
; Аргумент [Тип]:
; НЕТ
; Возвращает: Nil
(defun PurgeAllUnNamedGroups (/ grpList index grp)
  (setq grpList (dictsearch (namedobjdict) "ACAD_GROUP"))
  (setq index 1)
  (while (setq grp (nth index grplist))
    (if    (= (car grp) 3)
      (progn
    (if (= (chr 42) (substr (cdr grp) 1 1))
      (entdel (cdr (nth (+ index 1) grplist)))
    )
      )
    )
    (setq index (+ 1 index))
  )
  (princ)
)
; Ф-ция DeleteGroupbyName
; Удаление группы по имени.
; Аргумент [Тип]:
;   Name = Имя группы [STR]
; Возвращает: Null
(defun DeleteGroupbyName (Name)
(or *kpblc-activedoc*
   (setq *kpblc-activedoc* (vla-get-activedocument (vlax-get-acad-object)))
)
 (vl-catch-all-apply
 '(lambda ()
   (vla-delete
    (vla-item
     (vla-get-groups *kpblc-activedoc*)
     Name
    )
   )
  )
 )
 (princ)
)
; Ф-ция GetObjGroupNames
; Возвращает список имен групп объекта или nil.
; Arguments [Type]:
;   Obj = Object [VLA-OBJECT]
;   Obj = Object [ENAME]
; Возвращает [Type]:
;   Список имен групп [list]
;
(defun GetObjGroupNames (Obj / Cur_ID NmeLst)
 (or *kpblc-activedoc*
   (setq *kpblc-activedoc* (vla-get-activedocument (vlax-get-acad-object)))
)
 (if (= (type Obj) 'ENAME)(setq Obj (vlax-ename->vla-object Obj)))
 (setq Cur_ID (vla-get-ObjectID Obj))
 (vlax-for Grp (vla-get-Groups *kpblc-activedoc*)
  (vlax-for Ent Grp
   (if (equal (vla-get-ObjectID Ent) Cur_ID)
    (setq NmeLst (cons (vla-get-Name Grp) NmeLst))
   )
   (vlax-release-object Ent)
  )
  (vlax-release-object Grp)
 )
 (reverse NmeLst)
)
 ;;;Удаляет все пустые группы (именованные и неименованные)
 ;;;Объеткты, входящие в группы удаленны, а описание групп осталось
 ;;;http://dwg.ru/forum/viewtopic.php?t=4762
(defun PurgeAllEmptyGroups  ()(PurgeEmptyGroups t))
 ;;;Удаляет все пустые группы (именованные)
(defun PurgeAllNamedEmptyGroups  ()(PurgeEmptyGroups 0))
 ;;;Удаляет все пустые группы (неименованные)
(defun PurgeAllUnNamedEmptyGroups  ()(PurgeEmptyGroups 1))
;;;=======================================================
;;; Команды
;;;=======================================================
;;; Удаляет все группы Purge All Groups
(defun C:drz_PAG ()(PurgeAllGroups))
;;; Удаляет все пустые группы   Purge Empty Groups
(defun C:drz_PEG ()(PurgeAllEmptyGroups))
;;; Удаляет все неименованные группы  Purge Unnamed Groups
(defun C:drz_PUG ()(PurgeAllUnNamedGroups))