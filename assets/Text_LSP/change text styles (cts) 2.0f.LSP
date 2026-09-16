;| Команды предназначены для замены и обновления текстовых стилей во всех примитивах рисунка

По мотивам работ форума dwg.ru
Собрал воедино: Владимир Азарко aka VVA
Использованы программы: ru-textstyle-update Сергей Зуев aka ShaggyDoc
Ссылки на форум:
http://dwg.ru/f/showthread.php?t=18854
http://dwg.ru/f/showthread.php?t=21492&page=2


   CTS - замена текстовых стилей у всех объектов на выбранный
   CTSU - замена текстовых стилей у всех объектов на выбранный с деформатирование мтексов
   TSUP - изменение начертания всех существующих ТЕКСТОВ, АТРИБУТОВ во ВСЕХ примитивах, включая блоки, выбранного стиля.
          Устанавливается по определению стиля начертание, сжатие, угол наклона
          
   CTS - replacement of text styles at all objects on chosen
   CSTU - replacement of text styles at all objects on chosen with деформатирование мтексов
   TSUP - change of a tracing of all existing TEXTS, ATTRIBUTES in ALL примитивах, including the blocks, the chosen style.
          The tracing, compression, corner of an inclination is established by definition of style
          
22.10.2008 добавлена обработка форматирования МТЕКСТОВ для Автокада с 2008 версии (выравнивание влево, вправо, посередине, по ширине, распределенное)
02.12.2008 Заменена ф-ция cts:msg-yes-no - диалоговым окном
26.02.2009 Спасибо Sleekka. Исключена обработка блоков внешних ссылок.
           Добавлен выбор игнорируемых стилей
05.02.2010 Добавлана обработка дополнительного форматирования в ф-цию mip_MTEXT_Unformat
           http://forum.dwg.ru/showpost.php?p=515671&postcount=88
03.06.2010 Отдельная команда для удаления форматирования мтекста
23.12.2011 UNF-MTEXT (vla-SetCellState item row col acCellStateNone) Снятие блокировки ячейки
21.11.2013 Добавлена обработка MLEADER. Команда CTS
20.04.2016 Добавлена функция CTS:GET-TEXTSTRING (как замена vla-get-textstring. Т.к. неверно возвращает строку при наличии юникод символов)
           http://forums.autodesk.com/t5/visual-lisp-autolisp-and-general/vla-get-textstring-u-symbols/td-p/4365165
26.12.2017 Добавлена для таблиц vla-put-RegenerateTableSuppressed
03.06.2019  Обновление артибутов блоков, включенных в другие блоки
24.12.2021 Обновлена ф-ция mip_MTEXT_Unformat, обработка форматирования //PI
03.04.2024 Изменения в функции CTS (формулы в таблицах остаются) https://forum.dwg.ru/showthread.php?p=2065477#post2065477 post #306
           см. ;;;VVA 2024-04-03

|;
;;; ОГРАНИЧЕНИЕ ГАРАНТИЙ
;;; ПРОГРАММА РАСПРОСТРАНЯЕТСЯ НА УСЛОВИЯХ "КАК ЕСТЬ".
;;; АВТОРЫ НЕ БЕРУТ НА СЕБЯ И НЕ ПОДРАЗУМЕВАЮТ КАКИХ-ЛИБО ГАРАНТИЙНЫХ ОБЯЗАТЕЛЬСТВ.
;;; ВЫ ИСПОЛЬЗУЕТЕ  ПРОГРАММУ НА СВОЙ РИСК.
;;; АВТОРЫ НЕ БЕРУТ НА СЕБЯ ОТВЕТСТВЕННОСТЬ ЗА ПОТЕРЮ ДАННЫХ, УЩЕРБ, ПОТЕРЮ ПРИБЫЛИ ИЛИ ЛЮБЫЕ
;;; ДРУГИЕ ПОТЕРИ, ПРОИЗОШЕДШИЕ ВО ВРЕМЯ ИСПОЛЬЗОВАНИЯ ИЛИ НЕПРАВИЛЬНОГО ИСПОЛЬЗОВАНИЯ
;;; ДАННОГО ПРОГРАММНОГО ОБЕСПЕЧЕНИЯ.
;;;*****************************************************************************************
;;; Разрешается   использовать,  копировать,  изменять,  и  распространять  это  программное
;;; обеспечение бесплатно, при  условии, что программное обеспечение, полностью или частично
;;; включающее данное ПО, будет распространяться  на тех-же условиях, а указанные  выше знак
;;; авторского права и примечания об ограничениях гарантий будут приводиться во всех копиях.
;;;*****************************************************************************************


;; ************************************************************************
;;; * Библиотека DWGruLispLib Copyright ©2008  DWGru Programmers Group
;;; *
;;; * _dwgru-get-user-dcl (Кандидат)
;;; *
;;; * Запрос значения у пользователя через диалоговое окно
;;; *
;;; *
;;; * 26/01/2008 Версия 0002. Редакция Владимир Азарко (VVA)
;;;              - Выход по двойному клику, если запрещен множественный выбор (multi-nil)
;;;              - Обработка нескольких колонок
;;; * 21/01/2008 Версия 0001. Редакция Владимир Азарко (VVA)
;;; ************************************************************************
 
;;; ************************************************************************
;;; * Library DWGruLispLib Copyright © 2008 DWGru Programmers Group
;;; *
;;; * _dwgru-get-user-dcl (Candidate)
;;; *
;;; * Inquiry of value at the user through a dialogue window
;;; *
;;; *
;;; * 26/01/2008 Version 0002. Edition Vladimir Azarko (VVA)
;;; - the Output on double a clique if the plural choice (multi-nil) is forbidden
;;; - Processing of several columns
;;; * 21/01/2008 Version 0001. Edition Vladimir Azarko (VVA)

(defun _kpblc-dcl-msg-yes-no-low-level (title msg ok / _kpblc-dcl-create-file dcl_file dcl_id dcl_res handle)
                                       ;|
*    Показывает диалог [Да / Нет].
*    Параметры вызова:
  title   ; заголовок окна
  msg     ; сообщение. Строка или список
  ok      ; Кнопка по умолчанию. t - Да
*    Примеры вызова:
(_kpblc-dcl-msg-yes-no-low-level (_kpblc-dcl-create-title-label "Yes or No") "default - ok" t)
(_kpblc-dcl-msg-yes-no-low-level (_kpblc-dcl-create-title-label "Yes or No") "default - cancel" nil)
|;

  (defun _kpblc-dcl-create-file ()
                                ;|
    *    Возвращает имя файла dcl "по умолчанию"
    |;
    (strcat (vl-string-right-trim "\\" (getenv "temp")) "\\dlg.dcl")
  ) ;_ end of defun

  (setq dcl_file (_kpblc-dcl-create-file)
        handle   (open dcl_file "w")
  ) ;_ end of setq
  (foreach item (append (list (strcat "msg:dialog {label=\"" title "\";")
                              ":column{children_alignment=left;"
                        ) ;_ end of list
                        (mapcar (function (lambda (x) (strcat ":text{label=\"" x "\";}")))
                                (cond ((listp msg) msg)
                                      (t (_kpblc-conv-string-to-list msg "\n"))
                                ) ;_ end of cond
                        ) ;_ end of mapcar
                        (list "}"
                              ":row{alignment=centered;fixed_width=true;"
                              (strcat ":button{key=\"yes\";label=\"  Да   \";is_default=true;action=\"(done_dialog 1)\";width=10;"
                                      (if ok
                                        "is_default=true;"
                                        ""
                                      ) ;_ end of if
                                      "}"
                              ) ;_ end of strcat
                              (strcat ":button{key=\"no\";label=\"  Нет  \";is_cancel=true;action=\"(done_dialog 0)\";width=10;"
                                      (if (not ok)
                                        "is_default=true;"
                                        ""
                                      ) ;_ end of if
                                      "}"
                              ) ;_ end of strcat
                              "}"
                              "}"
                        ) ;_ end of list
                ) ;_ end of append
    (write-line item handle)
  ) ;_ end of foreach
  (close handle)
  (setq dcl_id (load_dialog dcl_file))
  (new_dialog "msg" dcl_id)
  (setq dcl_res (start_dialog))
  (unload_dialog dcl_id)
  (= dcl_res 1)
) ;_ end of defun

(defun _kpblc-conv-string-to-list (string separator / i)
                                  ;|
*    Функция разбора строки. Возвращает список либо точечную пару. За основу взяты уроки Евгения Елпанова по рекурсиям
*    Параметры вызова:
*  string    разбираемая строка
*  separator  символ, используемый в качестве разделителя частей
*    Примеры вызова:
(_kpblc-conv-string-to-list "1;2;3;4;5;6" ";")  ;-> '(1 2 3 4 5 6)
(_kpblc-conv-string-to-list "1;2" ";")          ;-> '(1 2)
|;
  (cond ((= string "") nil)
        ((= separator "") (list string))
        ((vl-string-search separator string)
         ((lambda (/ pos res)
            (while (setq pos (vl-string-search separator string))
              (setq res    (cons (substr string 1 pos) res)
                    string (substr string (+ (strlen separator) 1 pos))
              ) ;_ end of setq
            ) ;_ end of while
            (reverse (cons string res))
          ) ;_ end of lambda
         )
        )
        ((wcmatch (strcase string) (strcat "*" (strcase separator) "*"))
         ((lambda (/ pos res _str prev)
            (setq pos  1
                  prev 1
                  _str (substr string pos)
            ) ;_ end of setq
            (while (<= pos (1+ (- (strlen string) (strlen separator))))
              (if (wcmatch (strcase (substr string pos (strlen separator))) (strcase separator))
                (setq res    (cons (substr string 1 (1- pos)) res)
                      string (substr string (+ (strlen separator) pos))
                      pos    0
                ) ;_ end of setq
              ) ;_ end of if
              (setq pos (1+ pos))
            ) ;_ end of while
            (if (< (strlen string) (strlen separator))
              (setq res (cons string res))
            ) ;_ end of if
            (if (or (not res) (= _str string))
              (setq res (list string))
              (reverse res)
            ) ;_ end of if
          ) ;_ end of lambda
         )
        )
        (t (list string))
  ) ;_ end of cond
) ;_ end of defun


(defun _DWGRU-GET-USER-DCL (ZAGL INFO-LIST MULTI / FL RET DCL_ID MAXROW MAX_COUNT_COL COUNT_COL I LISTBOX_HEIGHT LST _LOC_FINISH _LOC_CLEAR NCOL) 
  ;|
* ENGLISH
* Inquiry of value at the user through a dialogue window
* Dialogue is formed to "strike"
* the Quantity of lines on page without скроллинга is set by variable MAXROW.
* It is necessary to remember, that number MAXROW increases on 3.
* the Maximum quantity of columns is set by variable MAX_COUNT_COL
* It is published
     http://dwg.ru/f/showthread.php?p=203746#post203746
* Parameters of a call:
    zagl - heading of a window [String]
    info-list - the list of line values[List of String]
    multi - t - the plural choice is resolved, nil-is not present
 
* Returns:
 The list of the chosen lines or nil - a cancelling
* the Example
 (_dwgru-get-user-dcl " Specify a variant " ' ("First " Second " " Third ") nil); _-> ("First") 
 (_dwgru-get-user-dcl " Specify a variant " ' ("First " Second " " Third ") t); _-> ("First " Second ")
 (_dwgru-get-user-dcl " Specify a variant "
   (progn (setq i 0 lst nil) (repeat 205 (setq lst (cons (strcat "Значение-" (itoa (setq i (1 + i)))) lst))) (reverse lst)) nil)
 (_dwgru-get-user-dcl " Specify a variant, using CTRL and SHIFT for a choice "
   (progn (setq i 0 lst nil) (repeat 205 (setq lst (cons (strcat "Значение-" (itoa (setq i (1 + i)))) lst))) (reverse lst)) t)
|;


  ;|
* RUS         
* Запрос значения у пользователя через диалоговое окно
* Диалог формируется "налету"
* Количество строк на страницу без скроллинга задается переменной MAXROW.
* Необходимо помнить, что число MAXROW увеличивается на 3.
* Максимальное количество колонок задается переменной MAX_COUNT_COL
* Опубликована
     http://dwg.ru/f/showthread.php?p=203746#post203746
* Параметры вызова:
    zagl - заголовок окна [String]
    info-list - список строковых значений[List of String]
    multi - t - разрешен множественный выбор, nil- нет
 
* Возвращает:
 Список выбранных строк или nil - отмена
* Пример
 (_dwgru-get-user-dcl "Укажите вариант" '("Первый" "Второй" "Третий") nil) ;_->("Первый") 
 (_dwgru-get-user-dcl "Укажите вариант" '("Первый" "Второй" "Третий") t) ;_->("Первый" "Второй")
 (_dwgru-get-user-dcl "Укажите вариант"
   (progn (setq i 0 lst nil)(repeat 205 (setq lst (cons (strcat "Значение-" (itoa (setq i (1+ i)))) lst)))(reverse lst)) nil)
 (_dwgru-get-user-dcl "Укажите вариант, используя CTRL и SHIFT для выбора"
   (progn (setq i 0 lst nil)(repeat 205 (setq lst (cons (strcat "Значение-" (itoa (setq i (1+ i)))) lst)))(reverse lst)) t)
|;
  ;_ ===== КОНСТАНТЫ ============
  (setq MAXROW 40) ;_макc. кол-во строк без скроллинга (К нему дальше добавится еще 3 строчки)
  ;_  max lines without scrolling (To it 3 more lines further will be added)
  (setq MAX_COUNT_COL 5) ;_максимальное количество колонок
  ;_ ; _ a maximum quantity of columns
  ;;;==================== Локальные фунцкции START==================================
  ;;;==================== Local functions START==================================
  (defun _LOC_FINISH () 
    (setq I   0
          RET NIL
    ) ;_ end ofsetq
    (repeat COUNT_COL 
      (setq I (1+ I))
      (setq RET (cons (cons I (get_tile (strcat "info" (itoa I)))) RET))
    ) ;_ end ofrepeat
    (setq RET (reverse RET))
    (done_dialog 1)
  ) ;_ end ofdefun
  (defun _LOC_CLEAR (NOMER) 
    (setq I 0)
    (repeat COUNT_COL 
      (setq I (1+ I))
      (if (/= I NOMER) 
        (progn 
          (start_list (strcat "info" (itoa I)))
          (mapcar 'add_list (nth (1- I) LST))
          (end_list)
        ) ;_ end ofprogn
      ) ;_ end ofif
    ) ;_ end ofrepeat
  ) ;_ end ofdefun
  ;;;==================== Локальные фунцкции END ==================================
  ;;;==================== Local functions END ==================================
  ;;;==================== MAIN PART ===============================================
  (if (null ZAGL) 
    (if (= (getvar "DWGCODEPAGE") "ANSI_1251") 
      (setq ZAGL "Выбор")
      (setq ZAGL "Select")
    ) ;_ end ofif
  ) ;_ end if
  (if (zerop (rem (length INFO-LIST) MAXROW))  ;_Целое количество столбцов
    (setq COUNT_COL (/ (length INFO-LIST) MAXROW)) ;_Его и оставляем
    (setq COUNT_COL (1+ (fix (/ (length INFO-LIST) MAXROW 1.0)))) ;_Берем ближайшее целое
  ) ;_ end ofif
  (if (> COUNT_COL MAX_COUNT_COL) 
    (setq COUNT_COL MAX_COUNT_COL)
  ) ;_Ограничиваем max количеством
  (setq LISTBOX_HEIGHT (+ 3 MAXROW)) ;_  добавляем 3 строчки для красоты и для исключения пограничного скроллинга
  ;_ We add 3 lines for appearance and for exception boundary scroll
  (if (and (= COUNT_COL 1) (<= (length INFO-LIST) MAXROW)) 
    (setq LISTBOX_HEIGHT (+ 3 (length INFO-LIST)))
  ) ;_ end ofif
  (setq I 0)
  (setq FL (vl-filename-mktemp "dwgru" NIL ".dcl"))
  (setq RET (open FL "w")
        LST NIL
  ) ;_ end ofsetq
  (mapcar '(lambda (X) (write-line X RET)) 
          (append 
            (list "dwgru_get_user : dialog { " 
                  (strcat "label=\"" ZAGL "\";")
                  ": boxed_row {"
                  (if (= (getvar "DWGCODEPAGE") "ANSI_1251") 
                    "label = \"Значение\";"
                    "label = \"Value\";"
                  ) ;_ end ofif
            ) ;_ end oflist
            (repeat COUNT_COL 
              (setq LST (append 
                          LST
                          (list 
                            " :list_box {"
                            "alignment=top ;"
                            (if MULTI 
                              "multiple_select = true ;"
                              "multiple_select = false ;"
                            ) ;_ end ofif
                            "width=31 ;"
                            (strcat "height= " (itoa LISTBOX_HEIGHT) " ;")
                            "is_tab_stop = false ;"
                            (strcat "key = \"info" (itoa (setq I (1+ I))) "\";}")
                          ) ;_ end oflist
                        ) ;_ end ofappend
              ) ;_ end ofsetq
            ) ;_ end ofrepeat
            (list 
              "}"
              ":row{"
              "ok_cancel_err;}}"
            ) ;_ end oflist
          ) ;_ end of list
  ) ;_ end of mapcar
  (setq RET (close RET))
  (if 
    (and (null (minusp (setq DCL_ID (load_dialog FL)))) 
         (new_dialog "dwgru_get_user" DCL_ID)
    ) ;_ end and
    (progn 
      (setq LST INFO-LIST)
      ((lambda (/ RET1 BUF ITM) 
         (repeat (1- COUNT_COL) 
           (setq I '-1)
           (while 
             (and (setq ITM (car LST)) 
                  (< (setq I (1+ I)) MAXROW)
             ) ;_ end ofand
             (setq BUF (cons ITM BUF)
                   LST (cdr LST)
             ) ;_ end ofsetq
           ) ;_ end ofwhile
           (setq RET1 (cons (reverse BUF) RET1)
                 BUF  NIL
           ) ;_ end ofsetq
         ) ;_ end ofrepeat
         (setq RET RET1)
       )  ;_ end oflambda
      )
      (if LST 
        (setq RET (cons LST RET))
      ) ;_ end ofif
      (setq LST (reverse RET))
      (setq I 0)
      (mapcar 
        '(lambda (THIS_LIST) 
           (if (<= (setq I (1+ I)) COUNT_COL) 
             (progn 
               (start_list (strcat "info" (itoa I)))
               (mapcar 'add_list THIS_LIST)
               (end_list)
             ) ;_ end ofprogn
           ) ;_ end ofif
         ) ;_ end oflambda
        LST
      ) ;_ end ofmapcar
      (set_tile "info1" "0")
      (setq I    0
            NCOL 1
      ) ;_ end ofsetq
      (repeat COUNT_COL 
        (action_tile 
          (strcat "info" (itoa (setq I (1+ I))))
          (strcat "(progn (setq Ncol " 
                  (itoa I)
                  ")(if (not multi)(_loc_clear Ncol))"
                  "(if (and (not multi)(= $reason 4))(_loc_finish)))"
          ) ;_ end ofstrcat
        ) ;_ end ofaction_tile
      ) ;_ end ofrepeat
      (action_tile "cancel" "(done_dialog 0)")
      (action_tile "accept" "(_loc_finish)")
      (if MULTI 
        (set_tile "error" 
                  (if (= (getvar "DWGCODEPAGE") "ANSI_1251") 
                    "Используйте CTRL и SHIFT для выбора"
                    "Use CTRL and SHIFT for a choicet"
                  ) ;_ end ofif
        ) ;_ end ofset_tile
        (set_tile "error" 
                  (if (= (getvar "DWGCODEPAGE") "ANSI_1251") 
                    "Можно выбирать двойным щелчком"
                    "It is possible to choose double click"
                  ) ;_ end ofif
        ) ;_ end ofset_tile
      ) ;_ end ofif
      (if (zerop (start_dialog)) 
        (setq RET NIL)
        (progn 
          (setq RET (apply 
                      'append
                      (mapcar 
                        '(lambda (ITM) 
                           (setq THIS_LIST (nth (1- (car ITM)) LST))
                           (mapcar 
                             (function (lambda (NUM) (nth NUM THIS_LIST)))
                             (read (strcat "(" (cdr ITM) ")"))
                           ) ;_ end ofmapcar
                         ) ;_ end oflambda
                        RET
                      ) ;_ end ofmapcar
                    ) ;_ end ofapply
          ) ;_ end ofsetq
        ) ;_ end ofprogn
      ) ;_ end if
      (unload_dialog DCL_ID)
    ) ;_ end of progn
  ) ;_ end of if
  (vl-file-delete FL)
  RET
) ;_ end ofdefun
(defun str-str-lst (str pat / i) 
  (cond 
    ((= str "") nil)
    ((setq i (vl-string-search pat str))
     (cons (substr str 1 i) 
           (str-str-lst (substr str (+ (strlen pat) 1 i)) pat)
     ) ;_  cons
    )
    (t (list str))
  ) ;_  cond
) ;_  defun
(defun VECTOR_LINE (LINELIST@ / REP# X# Y# X1# Y1# X2# Y2# COLOR#) 
  (if (= (type LINELIST@) 'list) 
    (progn (setq REP# 0) 
           (repeat (/ (length LINELIST@) 2) 
             (setq X# (nth REP# LINELIST@)
                   Y# (nth (+ REP# 1) LINELIST@)
             ) ;_ end of setq
             (if (and (= (type X#) 'STR) (= (type Y#) 'INT)) 
               (if (= (strcase X# "C")) 
                 (setq COLOR# Y#
                       X1#    NIL
                       Y1#    NIL
                       X2#    NIL
                       Y2#    NIL
                 ) ;_ end of setq
               ) ;_ end of if
               (if (and (= (type X#) 'INT) (= (type Y#) 'INT)) 
                 (if (and (= X1# NIL) (= Y1# NIL)) 
                   (setq X1# X#
                         Y1# Y#
                   ) ;_ end of setq
                   (progn 
                     (setq X2# X#
                           Y2# Y#
                     ) ;_ end of setq
                     (vector_image X1# Y1# X2# Y2# COLOR#)
                     (setq X1# X2#
                           Y1# Y2#
                           X#  NIL
                           Y#  NIL
                     ) ;_ end of setq
                   ) ;_ end of progn
                 ) ;_ end of if
               ) ;_ end of if
             ) ;_ end of if
             (setq REP# (+ REP# 2))
           ) ;_ end of repeat
    ) ;_ end of progn
  ) ;_ end of if
) ;_ end of defun
;;;; Функция выводит диалоговое окно Да-Нет
;;;;title - заголовок
;;;;message - сообщение
;;;; Возвращает t - Да
;;;;            nil - Нет
;;; Пример (cts:MSG-YES-NO "Привет" "Пойдем в кино?")

(defun cts:msg-yes-no (title message) 
  (= (mip_button2 title message "exclam" "Yes" "No") "Yes")
)
(defun mip_button2 (TITLE$ MSG$ ICON$ Button1$ Button2$ / fl ret i tmp DCL_ID% maxlen) 
  ;;;; идея и реализация значков взята у Terry Miller
  ;;;; Program Name: GetIcon.lsp [Get Icon R6]
  ;;;; Created By:   Terry Miller (Email: terrycadd@yahoo.com)
  ;;;;               (URL: http://web2.airmail.net/terrycad)

  ;;;TITLE$ - заголовок, строка
  ;;;MSG$   - сообщение, строка, разделенная \n

  ;;;ICON$  - строка. Возможные варианты
  ;;;                 "" - нет значка
  ;;;                 "DELETE" - значек корзины
  ;;;                 "ALERTX" - значек X в красном круге
  ;;;                 "EXCLAM" - предупреждение
  ;;;                 "LIGHT"  - лампочка
  ;;;                 "INFORM" - информация
  ;;;                 "QUEST"  - вопрос
  ;;;Button1$ - название кнопки 1
  ;;;Button2$ - название кнопки 2
  (vl-load-com)
  (if (= ICON$ "") (setq ICON$ "none"))
  (setq MSG$ (str-str-lst MSG$ "\n"))
  ;;; Оставляем не больше 20 строк
  (setq i 0)
  (setq MSG$ (vl-remove-if-not '(lambda (x) (< (setq i (1+ i)) 20)) MSG$))
  (setq maxlen (apply 'max (mapcar 'strlen MSG$)))
  (setq tmp nil
        i   0
  )
  (setq fl (vl-filename-mktemp "mip.dcl"))
  (setq ret (open fl "w"))
  (repeat (length MSG$) 
    (setq tmp (append tmp 
                      (list 
                        ": text {"
                        (strcat "key = \"msg" (itoa i) "\";")
                        "label = \"\";"
                        (cond 
                          ((< maxlen 11) "width = 12.609;")
                          ((< maxlen 21) "width = 20;")
                          ((< maxlen 31) "width = 30;")
                          ((< maxlen 41) "width = 40;")
                          ((< maxlen 51) "width = 50;")
                          ((< maxlen 61) "width = 65;")
                          ((< maxlen 71) "width = 75;")
                          ((< maxlen 81) "width = 85;")
                          (t "width = 15;")
                        )
                        "fixed_width = true;"
                        "vertical_margin = none;"
                        "}"
                      )
              )
    )
    (setq i (1+ i))
  )
  (mapcar '(lambda (x) (write-line x ret)) 
          (append 
            (list "dcl_settings : default_dcl_settings { audit_level = 3; } " "MIPTemp : dialog {" "key = \"title\";" "label = \"\";" ": row {" ": column {" 
                  "fixed_width = true;" ": row {" ": column {" " spacer;" ": image {" "key = \"mip_image\";" "width = 5.42;" "height = 2.51;" "fixed_width = true;" 
                  "fixed_height = true;" "aspect_ratio = 1;" "color = -15;" "}" "spacer;" "}" ": column {" "spacer;"
            )

            tmp
            (list "spacer;" 
                  "}"
                  " }"
                  " }"
                  "spacer;"
                  "}"
                  ": row {"
                  "fixed_width = true;"
                  "alignment = centered;"
                  ": button {"
                  "is_default = true;"
                  "key = \"OK\";"
                  (strcat "label = \"" Button1$ "\";")
                  "}"
                  ": button {"
                  "is_cancel = true;"
                  "key = \"Cancel\";"
                  (strcat "label = \"" Button2$ "\";")
                  "}"
                  "}"
                  "}"
            )
          )
  )

  (setq ret (close ret))
  (setq DCL_ID% (load_dialog fl))
  (if (not (new_dialog "MIPTemp" DCL_ID%)) 
    (exit)
  ) ;_ end of if

  (if (= TITLE$ "") (setq TITLE$ "AutoCAD Message")) ;_ end of if
  (set_tile "title" (strcat " " TITLE$))

  (setq i 0)
  (repeat (length MSG$) 
    (set_tile (strcat "msg" (itoa i)) (nth i MSG$))
    (setq i (1+ i))
  )
  (if (/= ICON$ "none") 
    (eval (read (strcat "(" ICON$ ":)")))
  ) ;_ end of if
  (action_tile "OK" "(done_dialog 1)")
  (action_tile "Cancel" "(done_dialog 2)")
  (setq CHOICE# (start_dialog))
  (unload_dialog DCL_ID%)
  (vl-file-delete fl)
  (if (= CHOICE# 1) 
    BUTTON1$
    BUTTON2$
  ) ;_ end of if
)
;;;(defun cts:msg-yes-no ( title message / usri1 ret)
;;;(setq usri1 (getvar "USERI1"))
;;;(SETVAR "USERI1" 0)
;;;(command "_vbastmt"
;;;(strcat "ThisDrawing.SetVariable \"USERI1\", "
;;;"MsgBox \(\""
;;;message
;;;"\","
;;;(itoa vlax-VBYesNo)
;;;",\""
;;;title
;;;"\"\)"
;;;)
;;;)
;;;(setq ret (= (getvar "USERI1") 6))
;;;(SETVAR "USERI1" usri1)
;;;ret	 
;;;)
(defun EXCLAM: () 
  (start_image "mip_image")
  (VECTOR_LINE 
    (list "C" 2 2 25 2 28 3 29 3 23 "C" 2 4 21 4 29 5 29 5 19 "C" 2 6 17 6 29 7 29 7 15 "C" 2 8 13 8 29 9 29 9 11 "C" 2 10 9 10 29 11 29 11 7 "C" 2 12 5 12 29 
          13 29 13 18 "C" 2 13 3 13 9 14 9 14 2 15 2 15 9 16 9 16 3 17 4 17 9 "C" 2 14 21 14 22 16 22 16 21 17 22 17 18 "C" 2 14 27 14 29 15 29 15 27 16 27 16 29 17 
          29 17 27 "C" 2 18 6 18 29 19 29 19 8 "C" 2 20 10 20 29 21 29 21 12 "C" 2 22 14 22 29 23 29 23 16 "C" 2 24 18 24 29 25 29 25 20 "C" 2 26 22 26 29 27 28 27 24 
          "C" 2 28 27 28 26
    ) ;_ end of list
  ) ;_ end of vector_line
  (VECTOR_LINE 
    (list "C" 54 3 30 1 28 1 25 2 24 2 23 3 22 3 21 4 20 4 19 5 18 5 17 6 16 6 15 7 14 7 13 8 12 8 11 9 10 9 9 10 8 10 7 11 6 11 5 12 4 12 3 14 1 16 1 "C" 54 13 
          16 13 16 "C" 54 14 19 14 19 "C" 54 16 19 16 19 "C" 54 17 16 17 16
    ) ;_ end of list
  ) ;_ end of vector_line
  (VECTOR_LINE 
    (list "C" 9 13 10 13 10 "C" 9 17 10 17 10 "C" 9 13 17 13 17 "C" 9 17 17 17 17 "C" 9 14 20 14 20 "C" 9 16 20 16 20 "C" 9 14 23 14 23 "C" 9 17 23 17 23 "C" 9 
          14 26 14 26 "C" 9 17 26 17 26 "C" 9 16 2 17 3 "C" 9 18 5 18 5 "C" 9 19 7 19 7 "C" 9 20 9 20 9 "C" 9 21 11 21 11 "C" 9 22 13 22 13 "C" 9 23 15 23 15 "C" 9 24 
          17 24 17 "C" 9 25 19 25 19 "C" 9 26 21 26 21 "C" 9 27 23 27 23 "C" 9 28 25 28 25 "C" 9 28 28 27 29
    ) ;_ end of list
  ) ;_ end of vector_line
  (VECTOR_LINE 
    (list "C" 250 13 15 13 11 14 10 14 18 "C" 250 15 21 15 10 16 10 16 18 "C" 250 17 11 17 15 "C" 250 14 25 14 24 15 23 15 26 16 26 16 23 17 24 17 25 "C" 250 4 
          30 27 30 29 28 29 25 28 24 28 23 27 22 27 21 26 20 26 19 25 18 25 17 24 16 24 15 23 14 23 13 22 12 22 11 21 10 21 9 20 8 20 7 19 6 19 5 18 4 18 3 17 2
    ) ;_ end of list
  ) ;_ end of vector_line
  (VECTOR_LINE 
    (list "C" 8 32 27 32 30 30 32 6 32 5 31 30 31 31 30 31 25 30 25 30 30 28 30 29 29 "C" 8 19 3 19 4 20 4 20 6 21 5 21 8 22 7 22 10 23 9 23 12 24 11 24 14 25 
          13 25 16 26 15 26 18 27 17 27 20 28 19 28 22 29 21 29 24 30 23 30 24
    ) ;_ end of list
  ) ;_ end of vector_line
  (end_image)
) ;_ end of defun

;; Pablished ShaggyDoc http://dwg.ru/f/showthread.php?t=21492&page=2
(defun ru-textstyle-update (style / ent_name ent_data old_style style_angle style_width tbe _modify-style atArr catArr) 
  (defun _modify-style (style_name new_style_name ent_data style_width style_angle / ent_type) 
    (setq ent_type (cdr (assoc 0 ent_data)))
    (if 
      (and 
        (or (= "TEXT" ent_type) 
            (= "ATTRIB" ent_type)
            (= "ATTDEF" ent_type)
        ) ;_ end of or
        (or (= "*" style_name) 
            (= (strcase style_name) (strcase (cdr (assoc 7 ent_data))))
        ) ;_ end of or
      ) ;_ end of and
      (entmod 
        (subst (cons 51 style_angle) 
               (assoc 51 ent_data)
               (subst 
                 (cons 41 style_width)
                 (assoc 41 ent_data)
                 (subst 
                   (cons 7 new_style_name)
                   (assoc 7 ent_data)
                   ent_data
                 ) ;_ end of subst
               ) ;_ end of subst
        ) ;_ end of subst
      ) ;_ end of entmod
    ) ;_ end of if
  ) ;_ end of defun
  ;; размеры
  (princ 
    (if (= (getvar "DWGCODEPAGE") "ANSI_1251") 
      (strcat "Ждите, привожу стиль\n '" style "' к определению...\n")
      (strcat "Wait, I result style \n  '" style "' in definition ...\n")
    )
  ) ;_ end of princ
  (setq ent_name    (tblnext "DIMSTYLE" t)
        old_style   (tblobjname "STYLE" style)
        tbe         (entget old_style)
        style_width (cdr (assoc 41 tbe))
        style_angle (cdr (assoc 50 tbe))
  ) ;_ end of setq
  (while ent_name 
    (setq ent_data (entget (tblobjname "DIMSTYLE" (cdr (assoc 2 ent_name)))))
    (if 
      (or 
        (= "*" style)
        (= old_style (cdr (assoc 340 ent_data)))
      ) ;_ end of or
      ;; (print
      (entmod 
        (subst 
          (cons 340 old_style)
          (assoc 340 ent_data)
          ent_data
        ) ;_ end of subst
      ) ;_ end of entmod
    ) ;_ end of if
    (entupd (cdr (assoc -1 ent_data)))
    (setq ent_name (tblnext "DIMSTYLE"))
  ) ;_ end of while

  ;; блоки
  ;|
  (setq ent_name (tblnext "BLOCK" t))
  (while ent_name
    (setq ent_data (cdr (assoc -2 ent_name)))
    (while ent_data
      (setq ent_data (entget ent_data))
      (_modify-style style style ent_data style_width style_angle)
      (setq ent_data (entnext (cdr (assoc -1 ent_data))))
    ) ;_ end of while
    (setq ent_name (tblnext "BLOCK"))
  ) ;_ end of while
  |;
  ;;;Modyfied VVA
  (vlax-for Blk (vla-get-blocks (vla-get-activedocument (vlax-get-acad-object))) 
    (if (= (vla-get-isxref Blk) :vlax-false) 
      (progn 
        (vlax-for Obj Blk 
          (setq ent_data (entget (vlax-vla-object->ename Obj)))
          (_modify-style style style ent_data style_width style_angle)
          (if 
            (and (vlax-property-available-p obj 'HasAttributes) 
                 (= (vla-get-hasattributes obj) :vlax-true)
            ) ;_ end of and
            (foreach atr 
              (append 
                (if 
                  (not 
                    (vl-catch-all-error-p 
                      (setq atArr (vl-catch-all-apply 
                                    'vlax-safearray->list
                                    (list 
                                      (vlax-variant-value 
                                        (vla-getattributes obj)
                                      ) ;_ end of vlax-variant-value
                                    ) ;_ end of list
                                  ) ;_ end of vl-catch-all-apply
                      ) ;_ end of setq
                    ) ;_ end of vl-catch-all-error-p
                  ) ;_ end of not
                  atArr
                ) ;_ end of if
                (if 
                  (not 
                    (vl-catch-all-error-p 
                      (setq caArr (vl-catch-all-apply 
                                    'vlax-safearray->list
                                    (list 
                                      (vlax-variant-value 
                                        (vla-getconstantattributes obj)
                                      ) ;_ end of vlax-variant-value
                                    ) ;_ end of list
                                  ) ;_ end of vl-catch-all-apply
                      ) ;_ end of setq
                    ) ;_ end of vl-catch-all-error-p
                  ) ;_ end of not
                  caArr
                ) ;_ end of if
              ) ;_ end of append
              (_modify-style 
                style
                style
                (entget (vlax-vla-object->ename atr))
                style_width
                style_angle
              ) ;_ end of _modify-style
            ) ;_ end of foreach
          ) ;_ end of if
        )
      )
    )
  )
  ;; примитивы
  (setq ent_name (entnext))
  (while ent_name 
    (_modify-style style style (entget ent_name) style_width style_angle)
    (entupd ent_name)
    (setq ent_name (entnext ent_name))
  ) ;_ end of while
)

(defun cts:layer-status-restore () 
  (foreach item *PD_LAYER_LST* 
    (if (not (vlax-erased-p (car item))) 
      (vl-catch-all-apply 
        '(lambda () 
           (vla-put-lock (car item) (cdr (assoc "lock" (cdr item))))
           (vla-put-freeze (car item) (cdr (assoc "freeze" (cdr item))))
         ) ;_ end of lambda
      ) ;_ end of vl-catch-all-apply
    ) ;_ end of if
  ) ;_ end of foreach
  (setq *PD_LAYER_LST* nil)
) ;_ end of defun
(defun cts:layer-status-save () 
  (setq *PD_LAYER_LST* nil)
  (vlax-for item (vla-get-layers (vla-get-activedocument (vlax-get-acad-object))) 
    (setq *PD_LAYER_LST* (cons 
                           (list item 
                                 (cons "freeze" (vla-get-freeze item))
                                 (cons "lock" (vla-get-lock item))
                           ) ;_ end of cons
                           *PD_LAYER_LST*
                         ) ;_ end of cons
    ) ;_ end of setq
    (vla-put-lock item :vlax-false)
    (if (= (vla-get-freeze item) :vlax-true) 
      (vl-catch-all-apply '(lambda () (vla-put-freeze item :vlax-false)))
    )
  ) ;_ end of vlax-for
) ;_ end of defun


;Extensions:
;It is possible to add bulged segments too by extending the data structure "segment" with (p1 p2 bulge) for curved segments and use a line-arc resp. arc-arc intersection method for those. Then a straight segment is still representable with (p1 p2) 
;line-arc and arc-arc intersection methods are e.g. in GLNADS.C of the AutoCAD SDK 2.0 and may be easily ported to AutoLISP. Another method is with VLA where it is possible to use (vla-intersect-with obj1 obj2), which works with curves and splines too. 
;;Posted by T.Willey 
;;http://www.theswamp.org/index.php?topic=14247.15
;;Обработка всех примитивов рисунка через VLA
;; Doc - vla указатель на обрабатываемый документ (setq Doc (vla-get-activedocument (vlax-get-acad-object)))
;; StyName - имя стиля
;; Ignore_Style_List - список игнорируемых стилей или nil
;; Unformat t - снос форматирования nil - нет
(defun ChangeAllTextObjectsStyle (Doc StyName Ignore_Style_List Unformat / tempObjType IsLo ColCnt RowCnt) 
  (vlax-for Blk (vla-get-Blocks Doc) 
    (setq IsLo (if (= (vla-get-IsLayout Blk) :vlax-true) T nil))
    (if 
      (and (= (vla-get-IsXref Blk) :vlax-false) 
           (not (wcmatch (vla-get-Name blk) "*|*")) ;;;thanks Sleekka
      )
      (vlax-for Obj Blk 
        (setq tempObjType (vla-get-ObjectName Obj))
        (vl-catch-all-apply 
          '(lambda () 
             ;_REM VVA 2016-04-20
             ;;;   (if (and Unformat (vlax-property-available-p Obj 'Textstring))
             ;;;     (vla-put-Textstring Obj (substr (apply 'strcat (mapcar '(lambda(x)(strcat "\\P" x))
             ;;;     (mapcar 'mip_MTEXT_Unformat (str-str-lst (vla-get-Textstring Obj) "\\P")))) 3)))

             ;_ADD VVA 2016-04-20     QWEASDZXC
             (if 
               (and Unformat 
                    (vlax-property-available-p Obj 'Textstring)
                    (not (member (vla-get-StyleName Obj) Ignore_Style_List))
               )
               (vla-put-Textstring Obj 
                                   (substr 
                                     (apply 'strcat 
                                            (mapcar '(lambda (x) (strcat "\\P" x)) 
                                                    (mapcar 'mip_MTEXT_Unformat (str-str-lst (cts:get-TextString (vlax-vla-object->ename Obj)) "\\P"))
                                            )
                                     )
                                     3
                                   )
               )
             )
             (cond 
               ((vl-position tempObjType '("AcDbMLeader"))
                (if (not (member (vla-get-StyleName Obj) Ignore_Style_List)) 
                  (vla-put-TextStyleName Obj StyName)
                )
               )
               ((vl-position tempObjType '("AcDbText" "AcDbMText" "AcDbAttributeDefinition"))
                (if (not (member (vla-get-StyleName Obj) Ignore_Style_List)) 
                  (vla-put-StyleName Obj StyName)
                )
                ;;;(if (not IsLo)(vla-put-Layer Obj "0"))
               )
               ((wcmatch tempObjType "AcDb*Dimension")
                (if (not (member (vla-get-textstyle Obj) Ignore_Style_List)) 
                  (vla-put-TextStyle Obj StyName)
                )
               )
               ((= tempObjType "AcDbBlockReference")
                (foreach Att (vlax-invoke Obj 'GetAttributes) 
                  (if (not (member (vla-get-StyleName Att) Ignore_Style_List)) 
                    (vla-put-StyleName Att StyName)
                  )
                )
                (foreach Att (vlax-invoke Obj 'GetConstantAttributes) 
                  (if (not (member (vla-get-StyleName Att) Ignore_Style_List)) 
                    (vla-put-StyleName Att StyName)
                  )
                )
               )
               ((= tempObjType "AcDbTable")
                (setq ColCnt 0)
                (vla-put-RegenerateTableSuppressed Obj :vlax-true)
                (repeat (vla-get-Columns Obj) 
                  (setq RowCnt 0)
                  (repeat (vla-get-Rows Obj) 
                    (if (/= acblockcell (vla-getcelltype obj rowcnt colcnt))  ;_VVA 2022-04-15
                      (progn 
                        (if 
                          (not 
                            (member (vla-getcelltextstyle Obj RowCnt ColCnt) 
                                    Ignore_Style_List
                            ) ;_ end of member
                          ) ;_ end of not
                          (vlax-invoke Obj 'SetCellTextStyle RowCnt ColCnt StyName)
                        ) ;_ end of if
                        (if Unformat  ;;;VVA 2024-04-03 https://forum.dwg.ru/showthread.php?p=2065477#post2065477 post #306
                          (vla-settext 
                            Obj
                            RowCnt
                            ColCnt
                            (mip_MTEXT_Unformat (vla-gettext Obj RowCnt ColCnt))
                          ) ;_ end of vla-settext
                        ) ;_if unformat
                      ) ;_ end of progn
                    ) ;_ end of if
                    (setq RowCnt (1+ RowCnt))
                  )
                  (setq ColCnt (1+ ColCnt))
                )
                (vla-put-RegenerateTableSuppressed Obj :vlax-false)
                (vla-update Obj)
               )
             )
           )
        )
      )
    )
  )
)
;;;================================================================================
;;;Written By Michael Puckett. 
;;;Список элементов символьных таблиц АвтоКАДа 
;;; - s- имя таблицы
;;;Пример - список всех слоев - (setq all_layers (tablelist "LAYER"))
;;;(setq all_layers (tablelist "LAYER"))
;;;
;;;AutoLisp should return something like this :
;;;Start Coding Here 
(defun tablelist (s / d r) 
  (while (setq d (tblnext s (null d))) 
    (setq r (cons (cdr (assoc 2 d)) r))
  )
)
;;;End Coding Here

(vl-load-com)

(defun mip_MTEXT_Unformat (Mtext / text Str) 
  ;;;http://www.caduser.ru/forum/index.php?PAGE_NAME=read&FID=44&TID=20992
  (setq Text "")
  ;;;  (if (wcmatch (strcase Mtext) "\\PI-#*,\\PT*") ;;_список
  ;;;    (setq Mtext (substr Mtext (+ 2 (vl-string-search ";" Mtext)))))
  (while (/= Mtext "") 
    (cond 
      ((wcmatch (strcase (setq Str (substr Mtext 1 2))) "\\[\\{}]")
       (setq Mtext (substr Mtext 3)
             Text  (strcat Text Str)
       )
      )
      ((wcmatch (substr Mtext 1 1) "[{}]") (setq Mtext (substr Mtext 2)))
      ((wcmatch (strcase (setq Str (substr Mtext 1 2))) "\\[LO`~]")
       (setq Mtext (substr Mtext 3))
      )
      ((wcmatch (strcase (substr Mtext 1 8)) "\\FSYMBOL") ;;;Add VVA remove Symbol
       (setq Mtext (substr Mtext (+ 2 (cond ((vl-string-search "}" Mtext)) ((vl-string-search ";" Mtext))))))
      )
      ((wcmatch (strcase (substr Mtext 1 2)) "\\[ACFHQTW]")
       (setq Mtext (substr Mtext (+ 2 (vl-string-search ";" Mtext))))
      )
      ((wcmatch (strcase Mtext) "\\PI-#*,\\PT*,\\PI#*") ;;;VVA 2011-01-20 VVA 2021-12-24
       (setq Mtext (substr Mtext (+ 2 (vl-string-search ";" Mtext))))
      )
      ((wcmatch (strcase (substr mtext 1 4)) "\\PQ[CRJDL],\\PTZ") ;;;Add by KPblC
       (setq mtext (substr mtext (+ 2 (vl-string-search ";" mtext))))
      )
      ((wcmatch (strcase (substr mtext 1 3)) "\\PX") ;;;абзац и междустрочный интервал \\PX[QITSBA]
       (setq mtext (substr mtext (+ 2 (vl-string-search ";" mtext))))
      )
      ((wcmatch (strcase (substr Mtext 1 2)) "\\P")
       (if 
         (or 
           (zerop (strlen Text))
           (= " " (substr Text (strlen Text)))
           (= " " (substr Mtext 3 1))
         )
         (setq Mtext (substr Mtext 3))
         (setq Mtext (substr Mtext 3)
               Text  (strcat Text " ")
         )
       )
      )
      ((wcmatch (strcase (substr Mtext 1 2)) "\\S")
       (setq Str   (substr Mtext 3 (- (vl-string-search ";" Mtext) 2))
             Text  (strcat Text (vl-string-translate "#^\\" "/^\\" Str))
             Mtext (substr Mtext (+ 4 (strlen Str)))
       )
      )

      (t
       (setq Text  (strcat Text (substr Mtext 1 1))
             Mtext (substr Mtext 2)
       )
      )
    )
  )
  Text
)
(defun mip_MTEXT_UnformatN (Mtext) 
  (LM:UnFormat Mtext t)
)

(defun LM:UnFormat (str mtx / _Replace regex) 
  (vl-load-com)
  ;;  Returns a string with all formatting codes removed.       ;;
  ;; http://lee-mac.com/unformatstring.html                     ;;
  ;;------------------------------------------------------------;;
  ;;  Author: Lee Mac, Copyright © 2010 - www.lee-mac.com       ;;
  ;;------------------------------------------------------------;;
  ;;  Arguments:                                                ;;
  ;;  str - String to Process                                   ;;
  ;;  mtx - MText Compatibility Flag                            ;;
  ;;        (Use T if String is destined for MText)             ;;
  ;;------------------------------------------------------------;;
  ;;  Returns:  String with formatting codes removed            ;;
  ;;------------------------------------------------------------;;
  ;; USE
  ;;(LM:UnFormat "{\\O\\C1;L\\C256;ee} {\\L\\C2;M\\C256;ac}" nil)
  ;;
  ;; Returns:  "Lee Mac"

  ;; © Lee Mac 2010

  (defun _Replace (new old str) 
    (vlax-put-property regex 'pattern old)
    (vlax-invoke regex 'replace str new)
  )
  (setq regex (vlax-get-or-create-object "VBScript.RegExp"))
  (mapcar 
    (function 
      (lambda (x) (vlax-put-property regex (car x) (cdr x)))
    )
    (list (cons 'global actrue) (cons 'ignorecase acfalse) (cons 'multiline actrue))
  )
  (mapcar 
    (function 
      (lambda (x) (setq str (_Replace (car x) (cdr x) str)))
    )
    '(("Р" . "\\\\\\\\")
      (" " . "\\\\P|\\n|\\t")
      ("$1" . "\\\\(\\\\[ACcFfHLlOopQTW])|\\\\[ACcFfHLlOopQTW][^\\\\;]*;|\\\\[ACcFfHLlOopQTW]")
      ("$1$2/$3" . "([^\\\\])\\\\S([^;]*)[/#\\^]([^;]*);")
      ("$1$2" . "\\\\(\\\\S)|[\\\\](})|}")
      ("$1" . "[\\\\]({)|{")
     )
  )
  (setq str (if mtx 
              (_Replace "\\\\" "Р" (_Replace "\\$1$2$3" "(\\\\[ACcFfHLlOoPpQSTW])|({)|(})" str))
              (_Replace "\\" "Р" str)
            )
  )
  (vlax-release-object regex)
  str
)
;|=============================================================================
*    Функция удаления форматирования на выбранных элементах
=============================================================================|;
;;; mtext unformat
(defun cts-unf-mtext (/ selset item _answer_ layer_set_list layer_status_list *error* col row) 
  ;; Локальные функции
  ;; Обработчик ошибок
  (defun *error* (msg) 
    (princ msg)
    ;; Завершение активных команд
    (while (/= (getvar "cmdactive") 0) (command))
    (cts:layer-status-restore)
    (vla-endundomark *activedoc*)
  ) ;_ end of defun
  (vl-load-com)
  (initget "вЕсь Выбор _ All Selection")
  (setq _answer_ (getkword 
                   "Обрабатывать объем [вЕсь файл/Выбор] ? <Весь файл> : "
                 ) ;_ end of getkword
  ) ;_ end of setq
  (or *activedoc* 
      (setq *activedoc* (vla-get-activedocument (vlax-get-acad-object)))
  )
  (vla-startundomark *activedoc*)
  (if (= _answer_ "Selection") 
    (setq selset (ssget '((0 . "MTEXT,ACAD_TABLE"))))
    (setq selset (ssget "_X" '((0 . "MTEXT,ACAD_TABLE"))))
  ) ;_ end of if
  (cts:layer-status-save)
  (while (and selset (> (sslength selset) 0)) 
    (setq item (ssname selset 0))
    (ssdel item selset)
    (setq item (vlax-ename->vla-object item))
    (if (= (vla-get-ObjectName item) "AcDbTable") 
      (progn 
        (vla-put-RegenerateTableSuppressed item :vlax-true)
        (setq col 0)
        (repeat (vla-get-columns item) 
          (setq row 0)
          (repeat (vla-get-rows item) 
            (vla-SetCellState item row col acCellStateNone)
            (vla-settext item row col (mip_MTEXT_Unformat (vla-gettext item row col)))
            (setq row (1+ row))
          )
          (setq col (1+ col))
        )
        (vla-put-RegenerateTableSuppressed item :vlax-false)
        (vla-update item)
      )
      (if (vlax-property-available-p item "TextString") 
        (vlax-put-property item 
                           "TextString"
                           (mip_MTEXT_Unformat (vlax-get-property item "TextString"))
        )
      )
    )
  ) ;_ end of while
  (cts:layer-status-restore)
  (vla-endundomark *activedoc*)
) ;_ end of defun

;;Change Text Style  
(defun CTS (unformat / st *error* ignore_style) 
  (defun *error* (msg) (princ msg) (cts:layer-status-restore) (princ))
  (cts:layer-status-save)
  (and 
    (setq st (ACAD_STRLSORT (vl-remove-if-not '(lambda (x) (snvalid x)) (tablelist "STYLE"))))
    (or 
      (setq ignore_style (_DWGRU-GET-USER-DCL 
                           (if (= (getvar "DWGCODEPAGE") "ANSI_1251") "Выберите игнорируемые стили или жми ОТМЕНА" "Select ignore style or press Cancel")
                           st
                           t
                         )
      )
      t
    )
    (or 
      (mapcar '(lambda (x) (setq st (vl-remove x st))) ignore_style)
      t
    )
    st
    (setq st (_DWGRU-GET-USER-DCL (if (= (getvar "DWGCODEPAGE") "ANSI_1251") "Выберите назначаемый стиль" "Select target style") st nil))
    (setq st (car st))
    (ChangeAllTextObjectsStyle (vla-get-activedocument (vlax-get-acad-object)) st ignore_style unformat)
  )
  (cts:layer-status-restore)
  (princ)
)
;;Change Text Style  
(defun C:drz_CTS () (cts nil))
;;Change Text Style with Unformat text
(defun C:drz_CTSU () (cts t))
(defun C:drz_UNF-MTEXT () (cts-unf-mtext))
;;; Text Style Update
(defun C:drz_TSUP (/ *error*) 
  (defun *error* (msg) (princ msg) (cts:layer-status-restore) (princ))
  (cts:layer-status-save)
  (if 
    (_kpblc-dcl-msg-yes-no-low-level
      (if (= (getvar "DWGCODEPAGE") "ANSI_1251")
        "ИЗМЕНЕНИЕ СТИЛЕЙ!!!!"
        "CHANGE STYLES!!!!"
      ) ;_ end of if
      (if (= (getvar "DWGCODEPAGE") "ANSI_1251")
        (strcat
          "\nПроизводится изменение начертания всех существующих \nТЕКСТОВ, АТРИБУТОВ \nво ВСЕХ примитивах, включая блоки, \nвыбранного стиля!"
          "\n\nУстанавливается по определению стиля\n начертание, сжатие, угол наклона"
          "\nПользоваться осторожно!\nБудем делать?"
        ) ;_ end of strcat
        (strcat
          " \nChange of a tracing of all existing \n TEXTS, ATTRIBUTES \n in ALL entities, including blocks, \n the chosen style Is made! "
          " \n \nThe tracing, compression, a corner of an inclination \n Is established by definition of style \n"
          " \nTo use cautiously! \n we Shall do?"
        ) ; _ end of strcat
      ) ;_ end of if
      t
    )
    (progn 
      (foreach style 
        (_DWGRU-GET-USER-DCL 
          (if (= (getvar "DWGCODEPAGE") "ANSI_1251") "Выберите стиль" "Select style")
          (ACAD_STRLSORT (vl-remove-if-not '(lambda (x) (snvalid x)) (tablelist "STYLE")))
          t
        )
        (ru-textstyle-update style)
      ) ;_ end of foreach
    )
  )
  (cts:layer-status-restore)
  (princ)
)
(if (= (getvar "DWGCODEPAGE") "ANSI_1251") 
  (princ "\nНаберите CTSU, CTS,UNF-MTEXT или TSUP в командной строке")
  (princ "\nType CTSU, CTS, UNF-MTEXT or TSUP in command line")
)
(princ)

;;====================================================================

(defun cts:get-TextString (ent / elst str) 
  ;;; ent -entity name
  ;;; return - text string
  (setq elst (entget ent))
  (if (vlax-property-available-p (vlax-ename->vla-object ent) 'Textstring) 
    (cond 
      ((= (cdr (assoc 0 elst)) "MULTILEADER")
       (if 
         (and 
           (cdr (assoc 360 elst)) ;_VVA 2015-05-23
           (dictsearch (cdr (assoc 360 elst)) "ACAD_FIELD") ;;; (BG:FIELDCODE ent) ;;;VVA 2015-03-27
         )
         (setq str (vla-get-TextString (vlax-ename->vla-object ent)))
         (setq str (cdr (assoc 304 elst)))
       )
      )
      ((and  ;;; MTEXT ATTRIB ADD VVA 2011-20-27
            (member (cdr (assoc 0 elst)) '("ATTRIB"))
            (member '(101 . "Embedded Object") elst)
       )
       (setq str (apply 'strcat (append (cts:massoc 3 elst) (cts:massoc 1 (member '(101 . "Embedded Object") elst)))))
      )

      ((member (cdr (assoc 0 elst)) '("TEXT" "MTEXT" "ATTRIB"))
       (setq str (apply 'strcat (append (cts:massoc 3 elst) (cts:massoc 1 elst))))
      )
      (t (setq str (vla-get-TextString (vlax-ename->vla-object ent))))
    )
  )
  str
)
(defun cts:massoc (key alist) 
  ;;;lib:massoc mip_lib.lsp
  (mapcar 'cdr (vl-remove-if-not (function (lambda (x) (= key (car x)))) alist))
)

(princ "\nchange text styles (cts) ver 2.0d loaded ")
(princ)
