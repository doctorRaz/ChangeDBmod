(progn ;LA добавила, чтобы скрыть при отладке прокрутку комментариев Command(s) to call EN
;;; ===================================================================================;;
;;;  BGTOOLS (Background tools) v.3.11a  Copyright © 2009-2019                         ;;
;;;  Idea conception by: Vladimir Svet (VOVA from dwg.ru)                              ;;
;;;  Programmation by: Vladimir Azarko (VVA from dwg.ru)                               ;;
;;;  special thanks: Пётр Лоскутов (Alaspher),LEE MAC,theswamp.org,dwg.ru,cadtutor.net ;;
;;;                                                                                    ;;
;;; Published                                                                          ;;
;;;  http://forum.dwg.ru/showthread.php?p=735810                                       ;;
;;;                                                                                    ;;
;;; ===================================================================================;;
;;;                                                                                    ;;
;;;  THIS PROGRAM AND PARTS OF IT MAY REPRODUCED BY ANY METHOD ON ANY                  ;;
;;;  MEDIUM FOR ANY REASON. YOU CAN USE OR MODIFY THIS PROGRAM OR                      ;;
;;;  PARTS OF IT ABSOLUTELY FREE.                                                      ;;
;;;                                                                                    ;;
;;;  THIS PROGRAM PROVIDES 'AS IS' WITH ALL FAULTS AND SPECIFICALLY                    ;;
;;;  DISCLAIMS ANY IMPLIED WARRANTY OF MERCHANTABILITY OR FITNESS                      ;;
;;;  FOR A PARTICULAR USE.                                                             ;;
;;;                                                                                    ;;
;;; ===================================================================================;;
;;;                                                                                                             ;;
;;;=============================================================================================================;;
;;;               Command(s) to call EN                                                                         ;;
;;;=============================================================================================================;;
;;;                                                                                                             ;;
;;;BGLAYDEL - delete frozen and off layers with objects
;;;BG1BLEXP - Explode blocks consisting of one element (it is possible other block)
;;;BGBLEXP  - Explode the block and all blocks entering into it, transforming visible attributes in the text
;;;BGBLEXP1 - Explode blocks of 1st level, transforming visible attributes in the text
;;;BGBLDYNEXP1 - Explode dynamic blocks of 1st level, transforming visible attributes in the text
;;;BGBLEXP1NOATT -Explode blocks of 1st level which do not have visible attributes 
;;;BGBLXCLIP - show xclip blocks
;;;BGBLDYN2A - Convert Dynamic Blocks to Anonymous blocks
;;;BGBLDYN2S - Convert Dynamic Blocks to Static blocks
;;;BGBLALLDYN2A - Conver ALL Dynamic Blocks to Anonymous
;;;BGBLALLDYN2S - Conver ALL Dynamic Blocks to Static
;;;BGBLXCLIPEXP - explode clipped block
;;;BGCB - copy a single block reference in the working drawing
;;;BGRB - rename a single block reference in the working drawing
;;;M2U - Convert MINSERT to Unnamed block
;;;M2B - Convert MINSERT to block
;;;U2B - Convert UNNAMED to block
;;;U2BM - Convert UNNAMED to block multiple selection
;;;UX - Explode UNNAMED block
;;;=======================================
;;;BGRGB2ACI - Changes color from RGB to the corresponding Index Color (ACI)
;;;BGAll2RGB - Converts the ACI colors of all entities to the RGB TrueColor equivalent
;;;BGCOLOR - Set a selected color to all objects (WITHOUT XREF)
;;;BGCOLORCMD - Set a selected color to all objects (WITHOUT XREF) command line version
;;;BGCOLORXREF - Changes color selected XREF ( ONLY ON A CURRENT SESSION )
;;;BGResetXRef -Resets properties of all layers dependent on the selected XREF(s) to those set in the source drawing file(s).
;;;BGBLCC - Changes color of the chosen blocks
;;;BGENCC - Changes color of the chosen element of the block
;;;BGCATT - Changes color of attributes of the chosen blocks
;;;BGCBL2 - Changes color in blocks 2 and more levels (the nested blocks)
;;;BGBLFIX - fix (normalize) blocks
;;;BGCFT   - Convert field to text
;;;BGCFTSEL - Convert field to text in selected objects
;;;BGHATCHDEL - Remove hatch
;;; 
)
(progn ;LA добавила, чтобы скрыть при отладке прокрутку комментариев Command(s) to call RUS                                                                                                           ;;
;;;=============================================================================================================;;
;;;               Command(s) to call RUS                                                                        ;;
;;;=============================================================================================================;;
;;;                                                                                                             ;;
;;;BGLAYDEL - Удаление выключенных и замороженных слоев с примитивами
;;;BG1BLEXP - Взрывает блоки, состоящие из одного примитива (возможно другого блока)
;;;BGBLEXP  - Взрывает блок и все блоки, входящие в него, превращая видимые атрибуты в текст
;;;BGBLEXP1 - Взрывает блоки 1-го уровня, превращая видимые атрибуты в текст;LA взрывает только блок в блоке
;;;BGBLDYNEXP1 - Взрывает динамические блоки 1-го уровня, превращая видимые атрибуты в текст
;;;BGBLEXP1NOATT - Взрывает блоки 1-го уровня, у которых нет видимых атрибутов
;;;BGBLXCLIP - Показывает подрезанные блоки
;;;BGBLDYN2A - Преобразовывает динамические блоки в анонимные
;;;BGBLDYN2S - Преобразовывает динамические блоки в статические
;;;BGBLALLDYN2A - Преобразовывает ВСЕ динамические блоки в анонимные
;;;BGBLALLDYN2S - Преобразовывает ВСЕ динамические блоки в статические
;;;BGBLXCLIPEXP - взорвать подрезанный блок
;;;BGCB - копирует одно из вхождений блока в блок с новым именем
;;;BGRB - переименовывает одно из вхождений блока в блок с новым именем
;;;M2U - Преобразовать MINSERT в Unnamed блок
;;;M2B - Преобразовать MINSERT в блок
;;;U2B - Преобразовать UNNAMED в блок
;;;U2BM - Преобразовать UNNAMED в блок множественный выбор
;;;UX - Взорвать UNNAMED блок
;;;=======================================
;;;BGRGB2ACI - Изменяет цвет с RGB на ACI
;;;BGAll2RGB - Изменяет ACI цвет в его RGB эквивалент
;;;BGCOLOR - Задает выбранный цвет всем объектам, кроме внешних ссылок
;;;BGCOLORCMD - Задает выбранный цвет всем объектам (запрос из командной строки), кроме внешних ссылок
;;;BGCOLORXREF - Меняет цвет выбранных внешних сылок (только в текушем сеансе)
;;;BGResetXRef - Сброс настроек слоев выбранных внешних ссылок на установленные в исходном файле
;;;BGBLCC - Изменяет цвет выбранных блоков
;;;BGENCC - Изменяет цвет выбранного элемента блока
;;;BGCATT - Изменяет цвет атрибутов выбранных блоков
;;;BGCBL2 - Изменяет цвет в блоках 2 и более уровня (вложенных блоках)
;;;BGBLFIX - Нормализация блоков
;;;BGCFT   - Конвертирует все поля в обычный текст
;;;BGCFTSEL - конвертирование полей в обычный текст в выбранных примитивах
;;;BGHATCHDEL - Удаление штриховки
)
(progn ;LA добавила, чтобы скрыть при отладке прокрутку комментариев HISTORY EN
;;;=============================================================================================================;;
;;;              HISTORY EN                                                                                            ;;
;;;=============================================================================================================;;
;;;                                                                                                             ;;
;;; 1.0 - fixed burst - the inheritance of the line type byblock, displaying hidden attributes, and inheritance type of line unit
;;; Added processing Burst LineWeight
;;; 1.1 unit change in color in the presence of attributes (cm;;; Change VVA 12.09.2008)
;;; ...
;;: 1.4 Handling multiline styles
;;; 1.11 ChangeAllObjectsColor - Handling size, leader and mtext with an explicit color.
;;; BGBLEXP - processing appearances dynamic blocks (if the visibility attributes are included)
;;; BG1BLEXP - Obabatyvayutsya units consisting of one element and
;;; - Name of the block A$C*
;;; - Or any other name and this one element of another block
;;; 1.12 - Do not remove the blocks, located on the off / frozen layer
;;; And having at least one primitive layer turned on, other than "0"
;;; 2.0 - BGBLEXP - Fixed a bug with the list
;;; 2.1 - processing blocks external links ChangeXrefAllObjectsColor
;;; 2.2 - Add command  BGCFT
;;; 2.3 - add BGCOLORXREF and BGRGB2ACI
;;; 2.4 - Processing of multi-attribute
;;; 2.5 - Added bg:FieldCode ChangeAllObjectsColor ChangeXrefAllObjectsColor - processing of Unicode characters
;;; 2.6 - Adding a BGBLDYN2A BGBLDYN2S
;;; 2.7 - Added handling of pre-selection
;;; 2.8 - Error handling and visibility attributes
;;; 2.9 - Added BGBLDYNEXP1
;;; 2.10 - Convert dynamic blocks bg:DynToStatic. Saving and restoring the values of attributes
;;; 2.11 - Changes in the bg:get-all-atts (processing UNICOD characters in attribute values)
;;;        BGHATCHDEL
;;;        ChangeAllObjectsColor - change table text and grid color
;;; 2.12 - Counted lineweight to the attributes
;;; 2.13 - Add BG:GET-TEXTSTRING functions ( http://forums.autodesk.com/t5/visual-lisp-autolisp-and-general/vla-get-textstring-u-symbols/td-p/4365165 )
;;; 2.14  - Add BGAll2RGB and Change ClearFieldInAllObjects look http://forum.dwg.ru/showthread.php?t=76285  post #6
;;; 2.15  - minor change in BGAll2RGB. Add BGCB and BGRB
;;;;2.16  - BGCBL2 now work with ACI and RGB color
;;;;2.17  - BGBLCC now work with ACI and RGB color and other minor change
;;; 2.18  - add command BGBLXCLIPEXP
;;; 2.19  - BGBLFIX add lock layer
;;; 2.20  - BGBLFIX fix bugs
;;; 2.21  - BGBLENCC fix bugs.
;;; 2.22  - Add Scale Uniformly and Allow Expoding options
;;; 2.23  - Fix BGCB BGRB command
;;; 2.24  - Edit UX command
;;; 2.25  - Fix BGBLCC и BGCBL2 command. Add BGCFTSEL
;;; 2.26  - Fix BGCFT command. Add BGBLALLDYN2A and BGBLALLDYN2S
;;; 2.27  - in command U2B, UX added processing blocks named *E
;;; 2.28    Fixed minor bugs in BGCFT command and function bg:DynToStatic
;;; 2.29    Fixed minor bugs in function ClearFieldInThisObject
;;; 2.30    Fixed minor bugs in function ClearFieldInThisObject
;;;         http://forums.autodesk.com/t5/visual-lisp-autolisp-and-general/vla-get-textstring-u-symbols/td-p/4365165
;;; 2.31    BGCFT clear field in dimention now
;;;         (http://forum.dwg.ru/showthread.php?p=1335110#post1335110)
;;; 2.32    minor change in bg:get-TextString (http://forum.dwg.ru/showpost.php?p=1386990&postcount=235) mark ; VVA 2015-03-27
;;; 2.33    minor change in bg:get-TextString (http://forum.dwg.ru/showpost.php?p=1409930&postcount=252) mark ; VVA 2015-05-23
;;; 2.34    BGBLFIX now change named plot style
;;; 2.35    BGBLEXP minor change
;;; 2.36    UX minor change http://forum.dwg.ru/showthread.php?p=1421560#post1421560
;;; 2.37    BGCFT fix bug with lock sell/ Marked as ;_Add VVA 2015-07-08
;;; 2.38    BGLAYDEL fix bug with restore layer setting
;;; 2.40    minor change in function bg:FieldCode. Add function bg:GetObjectIDString mark VVA 2015-12-07
;;; 2.41    minor change in function ClearFieldInThisObject. Mark VVA 2016-01-04
;;; 3.0    BGCOLBL Sets the color primitives \"bylayer\". If the color is set to force - Create a new layer
;;; 3.1    BGBLEXP - save field in attrib
;;;;3.2    BGCFT ignore AcDiesel CTAB field.  Marked as ;_ADD VVA 2017-01-26
;;;;3.3    Minor fix M2B command
;;;;3.4    Minor fix bg:explode-block
;;;;3.5    BG:BURST-ONE modified to retain visible constant attributes
;;;;3.6    Minor fix BGBLEXP (add bg:del-constraint)
;;;;3.7    Minor fix M2B Command
;;;;3.8    Minor change bg:FieldCode (http://forum.dwg.ru/showpost.php?p=1754063&postcount=467)
;;;;3.9    Minor change BGLAYDEL command
;;;;3.10   Add BGCOLORCMD command
;;;;3.11   Minor change BGLAYDEL command
;; LA 3.11a  Adapted for nanoCAD 21 and above. Added BGINFO command
;; LA 3.11b  Fixed the error BGCOLOR, BGCOLORCMD when processing multileaders
;; LA 3.11b1 Fixed the error BGCOLOR, BGCOLORCMD, BGCOLORXREF, BGAll2RGB when accessing OdaX.AcadAcCmColor,
;; LA        added a warning when versions of OdaX.AcadAcCmColor,
;; LA        if several products of different versions of the platform are installed
); LA
(progn ;LA добавила, чтобы скрыть при отладке прокрутку комментариев HISTORY RUS
;;;=============================================================================================================;;
;;;              HISTORY RUS                                                                                           ;;
;;;=============================================================================================================;;
;;;	1.0 - исправлены ошибки burst - при наследовании типа линии поблоку, показ скрытых атрибутов и наследования типа линии блока
;;;	                                если в блок примитив входил не на 0 слое, тип линии поблоку.
;;;	      добавлена обработка Burst LineWeight
;;;	1.1  изменение цвета блока при наличии атрибутов (см ;;; Change VVA 12.09.2008)
;;;	...
;;;	1.4  Обработка стилей мультилиний
;;;	1.11 ChangeAllObjectsColor - Обработка размеров, leader и mtext с явным заданием цвета.
;;;	     BGBLEXP - обработка видимостей динамических блоков (если в видимости включены атрибуты)
;;;	     BG1BLEXP - Обабатываются блоки, состоящие из одного элемента и
;;;	     - имя блока A$C*
;;;	     - или любое другое имя и этот один элемент другой блок
;;;	1.12 - Не удаляет блоки, расположенные на выключенном/ замороженном слое
;;;	       и имеющие хотя бы 1 примитив на включенном слое, отличном от "0"
;;;	2.0  - BGBLEXP - исправлена ошибка со списком
;;;	2.1  - обработка блоков внешних ссылок ChangeXrefAllObjectsColor
;;;	2.2  - команда BGCFT
;;;	2.3  - добавлены BGCOLORXREF и BGRGB2ACI
;;;	2.4  - Обработка многострочных атрибутов
;;;     2.5  - Добавленна bg:FieldCode ChangeAllObjectsColor ChangeXrefAllObjectsColor - обработка Unicode символов
;;;     2.6  - Добавленны команды BGBLDYN2A BGBLDYN2S
;;;     2.7  - Добавлена обработка предварительного выбора
;;;     2.8  - Ошибки с обработкой атрибутов и visibility
;;;     2.9  - Добавлена BGBLDYNEXP1
;;;     2.10  - Конвертация динамических блоков  bg:DynToStatic. Сохранение и восстановление значений атрибутов
;;;     2.11 - Изменения в bg:get-all-atts (обработка UNICOD символов в значениях атрибутов)
;;;            BGHATCHDEL
;;;            ChangeAllObjectsColor - change table text and grid color
;;;    2.12  - Учтен lineweight для атрибутов
;;;    2.13  - Добавлена функция BG:GET-TEXTSTRING (как замена vla-get-textstring. Т.к. неверно возвращает строку при наличии юникод символов)
;;;            http://forums.autodesk.com/t5/visual-lisp-autolisp-and-general/vla-get-textstring-u-symbols/td-p/4365165
;;;    2.14  - Добавлена команда BGAll2RGB Изменена ClearFieldInAllObjects см http://forum.dwg.ru/showthread.php?t=76285  post #6
;;;    2.15  - Небольшие изменения в BGAll2RGB. добавлены BGCB и BGRB
;;;;   2.16  - BGCBL2 теперь работает с RGB и ACI цветами
;;;;   2.17  - BGBLCC  теперь работает с RGB и ACI цветами + мелкие изменения
;;;;   2.18  - Учтено предложение http://forum.dwg.ru/showpost.php?p=949149&postcount=102
;;;;           Добавлена команда BGBLXCLIPEXP
;;;;   2.19  - Команда BGBLFIX. Добавлена опция игнорирования слоев
;;;;   2.20  - Команда BGBLFIX. Исправлен баг с атрибутами
;;;    2.22  - Добавлены опции Одинаковые масштабы и Разрешить расчленение
;;;    2.23  - Исправлены ошибки в командах BGRB и BGCGB
;;;    2.24  - Отредактирована команда UX (вложенность анонимных блоков)
;;;    2.25  - http://forum.dwg.ru/showthread.php?p=1024096#post1024096
;;;    2.25  - Fix BGBLCC и BGCBL2 command http://forum.dwg.ru/showthread.php?p=1088187#post1088187
;;;            Add BGCFTSEL http://forum.dwg.ru/showthread.php?t=20190&page=2
;;;    2.26  - BGCFT - добавлена обработка формата текста в таблице. Добавлены команды BGBLALLDYN2A и BGBLALLDYN2S
;;;    2.27  - в коммандах U2B ,UX добавлена обработка блоков с именем *E
;;;    2.28  - BGCFT - исправлена ошибка + изменения в function bg:DynToStatic
;;;    2.29  - Исправлен недочет ClearFieldInThisObject
;;;    2.30    Fixed minor bugs in function ClearFieldInThisObject
;;;         http://forums.autodesk.com/t5/visual-lisp-autolisp-and-general/vla-get-textstring-u-symbols/td-p/4365165
;;;    2.31    BGCFT добавлена очистка полей в размерах
;;;            (http://forum.dwg.ru/showthread.php?p=1335110#post1335110)
;;;    2.32    изменения в bg:get-TextString (http://forum.dwg.ru/showpost.php?p=1386990&postcount=235) помечено ; 2015-03-27
;;;            поля в мультивыносках
;;;    2.33    изменения в bg:get-TextString (http://forum.dwg.ru/showpost.php?p=1386990&postcount=252) помечено ; 2015-05-23
;;;    2.34    BGBLFIX обработка именованных стилей печати
;;;    2.35    BGBLEXP изменения VVA 2015-06-15
;;;    2.36    изменения в команде UX http://forum.dwg.ru/showthread.php?p=1421560#post1421560
;;;    2.37    BGCFT исправлена ошибка при обработке заблокированных ячеек таблицы  комментарии в тексте ;_Add VVA 2015-07-08
;;;    2.38    BGLAYDEL исправлена ошибка с востановлением слоев
;;;    2.40    Изменения в ф-ции bg:FieldCode. Добавлена ф-ция bg:GetObjectIDString mark VVA 2015-12-07
;;;    2.41    Изменения в ф-ции ClearFieldInThisObject. Обработка значений размеров над и под размерной линией
;;;            Mark VVA 2016-01-04. Подробнее см. http://forum.dwg.ru/showthread.php?p=1489832#post1489832
;;;    3.0    BGCOLBL Установка послою цвета примитивов подосновы. Если цвет задан явно- создается новый слой
;;;    3.1    BGBLEXP - сохранение полей в атрибутах
;;;;   3.2    BGCFT игнор
;;;;   3.3    Исправление в команде M2B
;;;;   3.4    Исправление fix bg:explode-block (исключение обработки внешних ссылок)
;;;;   3.5    BG:BURST-ONE измененая для сохранения постоянных атрибутов
;;;;   3.6    добавлено bg:del-constraint в BGBLEXP
;;;;   3.7    изменения в команде M2B
;;;;   3.8    Изменения в bg:FieldCode (http://forum.dwg.ru/showpost.php?p=1754063&postcount=467)
;;;;   3.9    Изменения BGLAYDEL. Слои удаляются командой _-LAYDEL ;LA для Nc _LAYDEL
;;;;   3.10   Добавлена команда BGCOLORCMD
;;;;   3.11   Изменения BGLAYDEL
;; LA  3.11a  Адаптировано под nanoCAD 21 и выше. Добавила команду BGINFO
;; LA  3.11b  Исправлена ошибка BGCOLOR, BGCOLORCMD при обработке мультивыносок
;; LA  3.11b1 Исправлена ошибка BGCOLOR, BGCOLORCMD, BGCOLORXREF, BGAll2RGB при обращении к OdaX.AcadAcCmColor,
;; LA         добавлено предупреждение при несоответствии версий OdaX.AcadAcCmColor, 
;; LA         если установлено несколько продуктов разных версий платформы
)
(vl-load-com)
;(setq IsTest T)(setq IsTest nil) ;LA
(if (= (getvar "SysCodePage") "ANSI_1251") (setq IsRus T)) ;LA
 ;| ;LA начало закомментированного для Nc (bg:purge-layer-filter) 
(defun bg:purge-layer-filter () ;LA не работает, см. TNP_all_filters_del_Nc.lsp #30860
;;;Purge layer filter
;;; Удаление фильтров слоев  
  (mapcar '(lambda (dictionary)
             (vl-catch-all-apply
               '(lambda ()
                  (vla-remove
                    (vla-getextensiondictionary
                      (vla-get-layers
                        (vla-get-activedocument
                          (vlax-get-acad-object)
                        ) ;_ end of vla-Get-ActiveDocument
                      ) ;_ end of vla-Get-Layers
                    ) ;_ end of vla-GetExtensionDictionary
                    dictionary
                  ) ;_ end of vla-Remove
                ) ;_ end of lambda
             ) ;_ end of vl-Catch-All-Apply
           ) ;_ end of lambda
          '("ACAD_LAYERFILTERS""ACLYDICTIONARY" "ACAD_LAYERSTATES") ;
  ) ;_ end of mapcar
) ;_ end of defun
 |; ;LA конец (bg:purge-layer-filter), закомментированного для Nc ;; Удаление лишних фильтров слоев из чертежа
 
;; LA ============= Начало добавления TNP_all_filters_del_Nc.lsp ======= #30860 ================ 
;; имена фильтров, которые требуется оставить передаются списком
;; Функция переписана с учетом особенностей версии 2005, где появился новый словарь
;; (all_filters_del '("Отдел_АС" "Отдел_АТиС" "Отдел_ВиК" "Отдел_ГП" "Отдел_ИИ" "Отдел_НГПО" "Отдел_ТТ" "Отдел_ЭиПБ" "Отдел_ЭС" )) ;_ автозапуск программы для удаления только лишних
;; см. для проверки "Фильтры слоев_Ac.dwg"
;;(all_filters_del '()) ;_ автозапуск программы для удаления ВСЕХ фильтров
;(vl-load-com) ;LA перенесла выше
(defun C:AllFilterDel () (all_filters_del '()) ) ;LA добавила команду
(defun C:AllFilterDelTest () (setq IsTest T) ;LA добавила команду для проверки
 ;(all_filters_del '("0" "Гр1" "3"))
 ;(all_filters_del '("0" "Гр1.1" "3"))
 ;(all_filters_del '("0"))
 ;(all_filters_del '("0" "3"))
 (all_filters_del '())
 (setq IsTest nil)
)
;; См. https://forum.dwg.ru/showthread.php?t=1537
(defun all_filters_del (lstnames / vla:lrs vla:xdic vla:dic vla:xrec name DataType DataValue num
                                  DicType DicMembNot ;LA
)
  (setq vla:lrs (vla-get-layers (vla-get-activedocument (vlax-get-acad-object))))
  
  (if IsTest (progn(princ "\n1 all_filters_del vla:lrs = ")(princ vla:lrs)))
  (if IsTest(VLAX-DUMP-OBJECT vla:lrs)) ;LA 18-05-2023
   (setq DicType "")
  (if (= (vla-get-hasextensiondictionary vla:lrs) :vlax-true)
    ;; при наличии словаря требуется детальная проверка
   (progn
    (setq lstnames (mapcar 'strcase lstnames))
    (setq vla:xdic (vla-getextensiondictionary vla:lrs))
    
    (if IsTest (progn(princ "\n2 vla:xdic = ")(princ vla:xdic))) 
    (if IsTest (VLAX-DUMP-OBJECT vla:xdic)) ;LA 18-05-2023
    (if (> (vla-get-count vla:xdic) 0) ;LA
     (progn 
      (vlax-for item vla:xdic
      (if IsTest (progn(princ "\n3 item = ")(princ  item ))) 
      (if IsTest (progn(princ ";  (vla-get-name item) = ")(princ (vla-get-name item)))) 
      (setq num 0)
     
      (setq vla:dic item)
      (if IsTest (progn(princ "\n4 vla:dic = ")(princ vla:dic))) 
      (if IsTest (VLAX-DUMP-OBJECT vla:dic)) ;LA 18-05-2023
      (if (> (vla-get-count vla:dic) 0) ;LA
       (progn
        (vlax-for vla:xrec vla:dic
         (if IsTest (progn (princ "\n4.0; ") (VLAX-DUMP-OBJECT vla:xrec))) ;LA 18-05-2023
         (cond
          ((= (vla-get-name item) "ACAD_LAYERFILTERS");; поиск и удаление фильтров версий пре-2005
           (if IsTest (progn(princ "\n4.1 (vla-get-name vla:xrec) = ")(princ (vla-get-name vla:xrec)))) 
           (if (not(vl-string-search "ACAD_LAYERFILTERS" DicType))
               (setq DicType (strcat DicType (if (= Dictype "") "" ", ") "ACAD_LAYERFILTERS"))
           )
           (setq name (vla-get-name vla:xrec))
           (setq DicMembNot(not (member (strcase ) name lstnames)))
          
          )
          ((= (vla-get-name item) "ACLYDICTIONARY")  ;; поиск и удаление фильтров версии 2005
           (if IsTest (progn(princ "\n4.2 (vla-get-name vla:xrec) = ")(princ (vla-get-name vla:xrec)))) 
           (if (not(vl-string-search "ACLYDICTIONARY" DicType))
               (setq DicType (strcat DicType (if (= Dictype "") "" ", ") "ACLYDICTIONARY"))
           )
           (setq name (vla-get-name vla:xrec))
           (vla-getxrecorddata vla:xrec 'DataType 'DataValue)
           (setq DicMembNot (not (member (strcase (vlax-variant-value (vlax-safearray-get-element
                                                                        DataValue
                                                                        (vl-position 300 (vlax-safearray->list DataType)))
                                         )         ) ;_  vlax-variant-value;_  strcase
                                         lstnames )) ;_  not;_  member
           ) ;setq
         )
         (T nil)
        ) ;cond
        
        (if DicMembNot 
          (progn 
            (if IsTest (progn(princ "\n5 name = ")(princ name))) 
            (princ(vla-remove vla:dic name)) (princ " - remove ;\n")
            (princ(vlax-release-object vla:xrec))  (princ " - release ;\n")
            (setq num (1+ num))
           ) ;_  progn
         ) ;_  if
        ) ;_  vlax-for vla:xrec vla:dic
        (vlax-release-object vla:dic)
        (if (zerop num)
           (princ (strcat "\nЛишних фильтров слоев " DicType " в рисунке не обнаружено."))
           (alert (strcat "\nПредупреждение! Не открывайте менеджер слоев!"              ;LA обработка дефекта #32036
                          "\n----------------------------------------------------------"
                          "\nЛишние фильтры слоев " DicType " будут удалены"
                          "\nтолько после сохранения и закрытия чертежа!" 
           ))
        ) ;if zerop
      )) ;if LA count vla:dic
      
     )  ;_  vlax-for item vla:xdic
     (vlax-release-object vla:xdic)
    )) ;if LA count vla:xdic
   ) ;_  progn
    (princ "\nФильтров слоев в рисунке не обнаружено.")
  ) ;_  if
  (vlax-release-object vla:lrs)
  (princ)
) ;_ defun
;; LA ================= конец добавления TNP_all_filters_del_Nc.lsp ====================
;(bg:purge-groups)
(defun bg:purge-groups ( / grpList index grp) ;LA - не понятно, работает или нет
;; Ф-ция bg:purge-groups
;; Удаляет описание всех групп
;; Аргумент [Тип]:
;;   НЕТ
;; Возвращает: Nil
;;;;;;		  (setq grpList (dictsearch (namedobjdict) "ACAD_GROUP"))
;;;;;;		  (setq index 1)
;;;;;;		  (while (setq grp (nth index grplist))
;;;;;;		    (if  (= (car grp) 3)
;;;;;;		      (entdel (cdr (nth (+ index 1) grplist)))
;;;;;;		    )
;;;;;;		    (setq index (+ 1 index))
;;;;;;		  )
;;;;;;		  (princ)
  (vlax-for grp (vla-item (vla-get-Dictionaries (vla-get-activedocument (vlax-get-acad-object)))
                          "ACAD_GROUP" )
     (vl-catch-all-apply  'vla-delete (list grp))
  )
) ;defun bg:purge-groups

;;;Удаление сохраненных page setups; LA работает под Nc 21.0, 22.0
; (bg:purge-AllPageSetups)
(defun bg:purge-AllPageSetups ( / pc)  ;LA было dic вместо pc??? См. также Справку AutoCAD 2019 Example_PlotConfigurations
  (vlax-for pc (vla-get-plotconfigurations (vla-get-activedocument (vlax-get-acad-object)))
    (princ " - конфигурация печати для удаления ")(princ (vla-get-name pc))
    (vla-delete pc)
  )
  (princ)
) ;defun bg:purge-AllPageSetups
(defun bg:del-constraint ( / dic) ;LA не срабатывает под Nc 21.0, возможно потому что другая технология
  ;;;Удаление constraint (параметрических зависимостей
  ;;; _DelConstraint 
  
 (and (setq dic (dictsearch (namedobjdict) "acad_assocnetwork")) (entdel (cdr (assoc -1 dic))))

) ;defun bg:del-constraint

;;(bg:purge-apps) ;LA
;; Пример C:\Lida\_sample\Xdata\Electrical_Test.dwg c apps Xdata
(defun bg:purge-apps ( / ncdoc count appid) ;LA работает под Nc 22.0
;;;Удаление зарегестрированных приложений 
;;;	(vlax-for Blk (vla-get-blocks (vla-get-activedocument (vlax-get-acad-object)))
;;;	    (if (= (vla-get-isxref Blk) :vlax-false)
;;;	      (progn
;;;	        (grtext -1
;;;	                (strcat "Inspecting objects: "
;;;	                        (vla-get-name Blk)
;;;	                ) ;_ end of strcat
;;;	        ) ;_ end of grtext
;;;
;;;	        (vlax-for Obj Blk (bg:del-XDATA-from-ename Obj nil))
;;;	      ) ;_ end of progn
;;;	    ) ;_ end of if
;;;	  ) ;_ end of vlax-for
  (setq ncdoc (vla-get-activedocument (vlax-get-acad-object))) ;LA
  (setq count(vla-get-Count (vla-get-registeredapplications ncdoc))) ;LA
  (vlax-for appid (vla-get-registeredapplications ncdoc)
    (vl-catch-all-apply 'vla-delete (list appid))
  ) ;vlax-for
  (setq count (- count (vla-get-Count (vla-get-registeredapplications ncdoc)))) ;LA
  (princ " -- удалено зарегистрированных приложений ") (princ count)  ;LA добавила печать, иначе не понятно, что удалено
  (princ)
) ;bg:purge-apps
;;;      (vl-catch-all-apply 'bg:purge-DGNLINE nil) ;LA требуются примеры для проверки
(defun bg:purge-ACADVBA ()(dictremove (namedobjdict) "ACAD_VBA"))
(defun bg:purge-DATALINK ()(dictremove (namedobjdict) "ACAD_DATALINK"))
(defun bg:purge-DGNLINE ()(dictremove (namedobjdict) "ACAD_DGNLINESTYLECOMP"))
; (bg:purge-all)
(defun bg:purge-all () ;LA работает под Nc 21.0, 22.0 с замечаниями
  (princ "\nПроверка...") ;(grtext -1 "Audit ... ") ;LA
  (vla-auditinfo (vla-get-activedocument (vlax-get-acad-object)) :vlax-true) ;LA работает под Nc 22.0, исправляет ошибки после закрытия файла
  (princ "- удаление фильтров слоев; ") ;(grtext -1 "purge layer filter") ;LA
  (all_filters_del '()) ;(bg:purge-layer-filter) ;LA заменила, см. TNP_all_filters_del_Nc.lsp #30860
  (princ "удаление групп; ");(grtext -1 "purge groups") ;LA
  (bg:purge-groups)   ;LA
  (princ "- удаление конфигураций печати; ");(grtext -1 "purge Page Setups") ;LA
  (bg:purge-AllPageSetups)
  ;(bg:del-constraint) ;LA не работает под Nc 21.0
  (bg:purge-ACADVBA)  ;LA
  (bg:purge-DATALINK) ;LA
  (bg:purge-DGNLINE)  ;LA
  (princ "- удаление приложений ") ;(grtext -1 "purge Apps") ;LA
  (bg:purge-apps)
  ;;; http://www.theswamp.org/index.php?topic=42110.0
  ;;; (dictremove (namedobjdict) "ACAD_DGNLINESTYLECOMP")
  (repeat 3 (vla-purgeall (vla-get-activedocument (vlax-get-acad-object))))
  (command "_.Regenall")
  (princ)
)

;|  ;LA начало закомментированого для Nc (bg:progress-init msg maxlen), (bg:progress currvalue), (bg:progress-clear)
(defun bg:progress-init (msg maxlen) ;LA не работает под Nc (не критично), т.к. использует (arx), .arx и ExpressTools
  ;;; msg - сообщение или пустая строка
  ;;; maxlen - максимальное количество
  (BG:PROGRESS-CLEAR)
  (cond
    ((vl-some '(lambda(x)(wcmatch x "1progressbars*"))(arx))
     ;;; ProGRESSBARS А.Ривилиса
     ;;; (PrgSet msg maxlen)
     (progressdlg msg maxlen 0.5 "ProgressBar")
     )
    ((and acet-ui-progress-init acet-ui-progress-safe acet-ui-progress-done)
     ;;;Progressbars Expresstools
      (acet-ui-progress-init msg maxlen); init - interval length
     )
    (t
     (or *BG:PROGRESS:OM* (setq *BG:PROGRESS:OM* (getvar "MODEMACRO")))
     (setq *BG:PROGRESS:MSG* (vl-princ-to-string msg))
     (setq *BG:PROGRESS:MAXLEN* maxlen)
     (setq *BG:PROGRESS:LPS* '-1)
     )
    )
    (princ)
) ;defun bg:progress-init
 
(defun bg:progress (currvalue / persent str1 count)  ;LA под Nc не будет работать
  (cond
    ((vl-some '(lambda (x) (wcmatch x "1progressbars*")) (arx))
;;; ProGRESSBARS А.Ривилиса
     ;;; (prgprogress currvalue)
     (PrDlgProgress currvalue) ;LA функция отсутствует
    )
    ((and acet-ui-progress-init ;LA (princ acet-ui-progress-init)
          acet-ui-progress-safe
          acet-ui-progress-done
     ) ;_ end of and 
;;;Progressbars Expresstools
     (acet-ui-progress-safe currvalue)
    )
    (t
     (if *BG:PROGRESS:MAXLEN*
       (progn
         (setq persent (fix (/ currvalue 0.01 *BG:PROGRESS:MAXLEN*)))
;;;Каждые 5 %
         (setq count (fix (* persent 0.2)))
         (setq str1 "")
         (if (/= count *BG:PROGRESS:LPS*)
           (progn
             ;;(setq str1 "")
             (repeat persent (setq str1 (strcat str1 "|")))
           ) ;_ end of progn
         ) ;_ end of if
;;; currvalue - текущее значение
         (setvar "MODEMACRO"
                 (strcat (vl-princ-to-string *BG:PROGRESS:MSG*)
                         " "
                         (itoa persent)
                         " % "
                         str1
                 ) ;_ end of strcat
         ) ;_ end of setvar
         (setq *BG:PROGRESS:LPS* persent)
       ) ;_ end of progn
     ) ;_ end of if
    )
  ) ;_ end of cond
  (princ)
) ;_ end of defun
      
(defun bg:progress-clear ()  ;LA под Nc не будет работать
 (cond
    ((vl-some '(lambda(x)(wcmatch x "1progressbars*"))(arx))
     ;;; ProGRESSBARS А.Ривилиса
     ;;;(PrgStop)
     (ProgressDlg)
     )
    ((and acet-ui-progress-init acet-ui-progress-safe acet-ui-progress-done)
     ;;;Progressbars Expresstools
      (acet-ui-progress-done)
     )
    (t
     (setq *BG:PROGRESS:MSG* nil
           *BG:PROGRESS:MAXLEN* nil
           *BG:PROGRESS:LPS* nil
           )
     (setvar "MODEMACRO" (vl-princ-to-string *BG:PROGRESS:OM*))
     )
  )
  (princ)
)
 |; ;LA конец закомментированого для Nc (bg:progress-init msg maxlen), (bg:progress currvalue), (bg:progress-clear)
 
;;LA (setq Mtext (cdr(assoc '3 (entget (car(entsel)))))) (setq IsTest T) (mip_MTEXT_Unformat Mtext) (setq IsTest nil) ;Mtext.dwg (numberp nil)
;; (setq Mtext (nth 16 (entget (car(entsel))))) (setq Mtext (nth 17 (entget (car(entsel)))))
;; LA заработало под Nc 21.0 после добавления проверки (if(setq x(vl-string-search ";" mtext))x 0)
(defun mip_MTEXT_Unformat ( Mtext / text Str x) ;LA работает под Nc 21.0, 22.0 
  ;;;http://www.caduser.ru/forum/index.php?PAGE_NAME=read&FID=44&TID=20992
  ;; см. #10816 txt-edit.LSP, #11716 change text styles (cts) 1.8.LSP
  (setq Text "")
;;;  (if (wcmatch (strcase Mtext) "\\PI-#*,\\PT*") ;;_список
;;;    (setq Mtext (substr Mtext (+ 2 (vl-string-search ";" Mtext)))))
   (if IsTest(princ "\nmip_MTEXT_Unformat "))
   (while (/= Mtext "")
      (cond
       ((wcmatch (strcase (setq Str (substr Mtext 1 2))) "\\[\\{}]")
        (if IsTest (princ "; 1 "))
        (setq Mtext (substr Mtext 3) Text   (strcat Text Str)))
       ((wcmatch (substr Mtext 1 1) "[{}]")
        (if IsTest (princ "; 2"))
        (setq Mtext (substr Mtext 2)))
       ((wcmatch (strcase (setq Str (substr Mtext 1 2))) "\\[LO`~]")
        (if IsTest (princ "; 3"))
	      (setq Mtext (substr Mtext 3)))
       ((wcmatch (strcase (substr Mtext 1 8)) "\\FSYMBOL");;;Add VVA remove Symbol
        (if IsTest (princ "; 4")) 
        (setq Mtext (substr Mtext (+ 2 (if(setq x(cond ((vl-string-search "}" Mtext))((vl-string-search ";" Mtext))))x 0)))))
       ((wcmatch (strcase (substr Mtext 1 2)) "\\[ACFHQTW]")
        (if IsTest (princ "; 5"))
        (setq Mtext (substr Mtext (+ 2 (if(setq x(vl-string-search ";" Mtext))x 0)))))
	     ((wcmatch (strcase Mtext) "\\PI-#*,\\PT*")  ;;;VVA 2011-01-20
	      (if IsTest (princ "; 6"))          
	      (setq Mtext (substr Mtext (+ 2 (if(setq x(vl-string-search ";" Mtext))x 0)))))
	     ((wcmatch (strcase (substr mtext 1 4)) "\\PQ[CRJD],\\PTZ") ;;;Add by KPblC
	      (if IsTest (princ "; 7"))
	      (setq mtext (substr mtext (+ 2 (if(setq x(vl-string-search ";" mtext))x 0)))))
       ((wcmatch (strcase (substr mtext 1 3)) "\\PX");;;абзац и междустрочный интервал \\PX[QITSBA]
        (if IsTest (princ "; 8"))
	      (setq mtext (substr mtext (+ 2 (if(setq x(vl-string-search ";" mtext))x 0)))))
       ((wcmatch (strcase (substr Mtext 1 2)) "\\P")
        (if IsTest (princ "; 9"))
        (if (or  (zerop (strlen Text))
		             (= " " (substr Text (strlen Text)))
		             (= " " (substr Mtext 3 1)))
            (setq Mtext (substr Mtext 3))
            (setq Mtext (substr Mtext 3) Text (strcat Text " "))))
	     ((wcmatch (strcase (substr Mtext 1 2)) "\\S")
	      (if IsTest (princ "; 10"))
        (setq Str   (substr Mtext 3 (- (if(setq x(vl-string-search ";" Mtext))x 0) 2))
              Text  (strcat Text (vl-string-translate "#^\\" "/^\\" Str))
              Mtext (substr Mtext (+ 4 (strlen Str)))))
          
	      (t 
	       (if IsTest (princ "; 11"))
	       (setq Text (strcat Text (substr Mtext 1 1)) Mtext (substr Mtext 2)))
	   )
	  
	 )
	(if IsTest (progn(princ "\nMtext = ")(princ Mtext)(princ "; text = ")(princ text)
	                 (princ "; str = ")(princ str))) 
  Text
 )

(defun bg:msg-Popup ( title message flags / WScript ret ) ;LA работает под Nc 21.0, 22.0
  ;;; title - text to displayed in title bar
  ;;; message - message
  ;;; flags - integer icon+ button See http://msdn2.microsoft.com/en-us/library/x83z1d9f.aspx
  ;;; intButton = object.Popup(strText,[nSecondsToWait],[strTitle],[nType])
  ;;; Use (bg:msg-Popup "Test" "2+2=4\nRight?" (+ 4 32 4096))
  
;;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;; Коды nType Сумма Кнопки + Иконки

;;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;; Кнопки Button
;;;0 - Show OK button.
;;;1 - Show OK and Cancel buttons.
;;;2 - Show Abort, Retry, and Ignore buttons.
;;;3 - Show Yes, No, and Cancel buttons.
;;;4 - Show Yes and No buttons.
;;;5 - Show Retry and Cancel buttons.

;;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;; Иконки Icon Types
;;;16 - Show "Stop Mark" icon.
;;;32 - Show "Question Mark" icon.
;;;48 - Show "Exclamation Mark" icon.
;;;64 - Show "Information Mark" icon.

;;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;; Other
  
;;;256	The second button is the default button.
;;;512	The third button is the default button.
;;;4096	The message box is a system modal message box and appears in a topmost window.
;;;524288	The text is right-justified.
;;;1048576	The message and content text display in right-to-left reading order.
  
;;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;; Return - intButton Возвращаемое значение

;;;1 - OK button
;;;2 - Cancel button
;;;3 - Abort button
;;;4 - Retry button
;;;5 - Ignore button
;;;6 - Yes button
;;;7 - No button

;;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
  (vl-catch-all-apply
    (function
      (lambda ()
        (setq WScript (vlax-create-object "WScript.Shell"))
        (setq ret (vlax-invoke-method WScript "popup" message "0" title flags))
      )
    )
  )
  (if WScript (vlax-release-object WScript))
  ret
)
;;;; Функция выводит диалоговое окно Да-Нет
;;;;title - заголовок
;;;;message - сообщение
;;;; Возвращает t - Да
;;;;            nil - Нет
;;; Пример (bg:MSG-YES-NO "Привет" "Пойдем в кино?")
(defun bg:msg-yes-no (title message / ) ;LA работает под Nc 21.0, 22.0
  ;;; title - text to displayed in title bar
  ;;; message - message
  ;;; Return T - Yes button Nil - No button
  ;;(bg:msg-yes-no "Test" "2+2=4\nRight?")
  (= (bg:msg-Popup title message (+ 4 48)) 6)
)


(defun str-str-lst (str pat / i)  ;LA работает под Nc 21.0, 22.0
;; str-str-lst - cервисная ф-ция извлечения из строки данных, разделенных 
;; каким либо символом или строкой символов. Возвращает список строк. Аргументы [Type]:
;;  str - строка для разбора [STRING]
;;  pat - разделитель [STRING]
;;  Пример запуска
;;  (setq str "мы;изучаем;рекурсии" pat ";")
;;  (setq str "мы — изучаем — рекурсии" pat " — ")
;;  (str-str-lst str pat)
;; Читать подробнее http://www.caduser.ru/cgi-bin/f1/board.cgi?t=25113OT

  (cond ((= str "") nil)
        ((setq i (vl-string-search pat str))
         (cons (substr str 1 i)
               (str-str-lst (substr str (+ (strlen pat) 1 i)) pat)
         ) ;_  cons
        )
        (t (list str))
  ) ;_  cond
) ;_  defun

;; (bg:layer-status-restore) ;восстанавливает состояние слоев, сохраненное в *BG_LAYER_LST*
(defun bg:layer-status-restore ()  ;LA работает под Nc 21.0, 22.0
    (foreach item *BG_LAYER_LST*
      (if (not (vlax-erased-p (car item)))
        (vl-catch-all-apply
          '(lambda ()
             (vla-put-lock (car item) (cdr (assoc "lock" (cdr item))))
             (vla-put-freeze (car item) (cdr (assoc "freeze" (cdr item))))
             (vla-put-LayerOn (car item) (cdr (assoc "onoff" (cdr item))))
             ) ;_ end of lambda
          ) ;_ end of vl-catch-all-apply
        ) ;_ end of if
      ) ;_ end of foreach
    (setq *BG_LAYER_LST* nil)
) ;_ end of defun
;; (setq Istest T)(bg:layer-status-save) (setq IsTest nil) ;LA для проверки
;; Сохраняет состояние слоев в *BG_LAYER_LST* и размораживает, разблокирует, включает все слои
(defun bg:layer-status-save ()  ;LA работает под Nc 21.0, 22.0
    (setq *BG_LAYER_LST* nil)
    (vlax-for item (vla-get-layers (vla-get-activedocument (vlax-get-acad-object)))
      (setq *BG_LAYER_LST* (cons (list item
                                  (cons "freeze" (vla-get-freeze item))
                                  (cons "lock" (vla-get-lock item))
                                  (cons "onoff" (vla-get-LayerOn item)) 
                                  ) ;_ end of cons
                            *BG_LAYER_LST*
                            ) ;_ end of cons
      ) ;_ end of setq
      ;(if IsTest (progn (princ "\n bg:layer-status-save"))) ;LA
      (vla-put-lock item :vlax-false)
      (if (= (vla-get-freeze item) :vlax-true)
       (vl-catch-all-apply '(lambda () (vla-put-freeze item :vlax-false))))
      (if (= (vla-get-LayerOn item) :vlax-false) ;LA добавила
       (vl-catch-all-apply '(lambda () (vla-put-LayerOn item :vlax-true)))) ;LA добавила
    ) ;_ end of vlax-for
) ;_ end of defun bg:layer-status-save

;;LA; (setq IsTest T) (setq ent (car(nentsel))) (bg:get-TextString ent) (setq IsTest nil) ;LA см. Выноски.dwg, Выноски.txt
(defun bg:get-TextString (ent / elst str i i301) ;LA работает под Nc 21.0, 22.0 добавила обработку выносок Nc
  ;;; ent - entity name (имя примитива, в т.ч. в блоке)
  ;;; return - text string; возвращает текстовую строку
  ;;; http://forums.autodesk.com/t5/visual-lisp-autolisp-and-general/vla-get-textstring-u-symbols/td-p/4365165
  (setq elst (entget ent))
  (if IsTest(progn (princ "\n elst = ")(princ elst))) ;LA
  (if IsTest(vlax-dump-object (vlax-ename->vla-object ent)));LA
  (if (vlax-property-available-p (vlax-ename->vla-object ent) 'Textstring)
    (cond 
     ((= (cdr(assoc 0 elst)) "MULTILEADER") ;LA - работает под Nc; под Nc есть доп. объекты "NOTEPOSITION", "NOTE"
	    (if (and (cdr (assoc 360 elst));_VVA 2015-05-23
              (dictsearch (cdr (assoc 360 elst)) "ACAD_FIELD") ;;; (BG:FIELDCODE ent) ;;;VVA 2015-03-27
          )
	     (setq str (vla-get-TextString (vlax-ename->vla-object ent)))
	     (setq str (cdr(assoc 304 elst)))
	    ) ;if
	    (if IsTest (progn (princ "\n 1 str = ")(princ str))) ;LA
     )
    
     ((and ;;; MTEXT ATTRIB ADD VVA 2011-20-27
           (member (cdr(assoc 0 elst)) '("ATTRIB"))
           (member '(101 . "Embedded Object") elst)
      )
      (setq str (apply 'strcat (append (bg:massoc 3 elst)
                                       (bg:massoc 1 (member '(101 . "Embedded Object") elst))
      )         )              )
      (if IsTest (progn (princ "\n 2 str = ")(princ str))) ;LA - требуется проверка
     )
          
     ((member (cdr(assoc 0 elst)) '("TEXT" "MTEXT" "ATTRIB"))  ;LA - работает под Nc 
      (setq str (apply 'strcat (append (bg:massoc 3 elst)(bg:massoc 1 elst))))
       ;LA многостраничный Mtext объединяется и загоняется в str.
       ;LA Но вероятно, при какой-то длине строки должен усекаться!!! 
      (if IsTest (progn (princ "3 str = ")(princ str)))
     )
     (t (setq str (vla-get-TextString (vlax-ename->vla-object ent)))
        (if IsTest (progn (princ "\n T str = ")(princ str))) ;LA
     )
    ) ;cond
    (progn ;; LA добавила для выносок Nc (не имеют свойства Textstring, DXF-код тэга 301, DXF-код значения 300)
     (if IsTest (progn (princ "\n4.1 (cdr(assoc 0 elst)) = ")(princ (cdr(assoc 0 elst)))))
     (if(member (cdr(assoc 0 elst))
         '("NOTE" "NOTEPOSITION" "NOTECOMB" "NOTESECANT" "NOTEMULTILAYER" "NOTEKNOT" "LINEARMARK" "NOTECHAIN"))
          ;LA добавила для Nc его универсальные выноски
        (progn 
         (setq i 0)
         (repeat (length elst)
           (setq i301 (cdr (nth i elst)))
           (if (equal (type i301) 'STR)
               (if(or(wcmatch i301 "*String*")
                     (wcmatch i301 "Node*")       ;для NOTEKNOT
                     (wcmatch i301 "SheetNumber") ;для NOTEKNOT 
                  ) ;or
                  (if str 
                      (setq str (strcat str " \n" (cdr (nth (1+ i)elst))))
                      (setq str (cdr (nth (1+ i)elst) ))
            )  )  )  ;if if if 
            (setq i (1+ i)) 
          ) ; repeat
          (if IsTest (progn (princ "\n4.2 str = ")(princ str)))
     ) ) ;progn if
   )) ;progn if. 
   (princ "\n ");(princ str) ;LA
   str
) ;defun bg:get-TextString

;;; Utility function to get multiple group code CDRs
(defun bg:massoc (key alist) ;LA работает под Nc 21.0, 22.0
;;  lib:massoc mip_lib.lsp
;;****************************************************************************  
;; Function : Utility function to get multiple group code
;;            Возвращает все вхождения ключа в списке
;; Argument : 'key'     - The DXF code to check / DXF код
;;            'alist' -    The List to check  / Список
;; Returns  : The value of the DXF dotted pair, if it exists else returns nil
;;              Значение точечной пары, если есть или nil
;;****************************************************************************
  (mapcar 'cdr (vl-remove-if-not (function (lambda (x) (= key (car x)))) alist))
)
;(setq ent (entget (car(nentsel)))) (bg:FieldCode ent) ;LA указать на ATTRIB, *TEXT, MULTILEADER
(defun bg:FieldCode (ent / foo elst xdict dict field str tmp) ;LA работает под Nc 22.0
 ;; (setq EE ent)
  ;;;VVA 2018-11-17
  ;; credits gile gc:FieldCode
  (defun ObjIdxStr (fld / pos) ;лок. ф-ция в (bg:FieldCode ent)
   (setq pos (vl-string-search "ObjIdx " fld 0))  ;(cdr (assoc 2 fldId)) ;LA
   (substr fld (1+ pos) (- (vl-string-search ">%" fld pos) pos))
  );defun ObjIdxStr

  (defun foo (field str / pos fldID objID fld) ;лок. рекурсивная ф-ция в (bg:FieldCode ent)
    (setq pos 0)
    (if (setq pos (vl-string-search "\\_FldIdx " str pos))
      (while (setq pos (vl-string-search "\\_FldIdx " str pos))
        (setq fldId (entget (cdr (assoc 360 field)))
              field (vl-remove (assoc 360 field) field))
        (setq fld (cdr (assoc 2 fldId))) ;LA добавила
        (setq str   (strcat (substr str 1 pos)
                            (if (setq objID (cdr (assoc 331 fldId)))
                                (vl-string-subst
                                 ;;; (strcat "ObjId " (itoa (gc:EnameToObjectId objID))) ;;; VVA 2015-12-07
                                 (strcat "ObjId " (bg:GetObjectIDString objID))
                                 ;;; "ObjIdx" ;;; rem VVA 2015-12-07
                                 (ObjIdxStr fld);LA было (ObjIdxStr (cdr (assoc 2 fldId))) ;;; add VVA 2015-12-07
                                 fld  ;LA было (cdr (assoc 2 fldId))
                                ) ;vl-string-subst
                                (foo fldId (cdr (assoc 2 fldId))) ;рекурсия 2
                            ) ;if
                            (substr str (1+ (vl-string-search ">%" str pos)))
                    ) ;strcat
        ) ;setq
      ) ;while
      str
    ) ;if
  ) ;defun foo 
  (progn ;LA добавила progn, чтобы скрыть закомментированый фрагмент кода
;;;		;; gc:EnameToObjectId (gile)
;;;		;; Returns the ObjectID from an ename
;;;		;;
;;;		;; Argument : an ename
;;;
;;;		(defun gc:EnameToObjectId (ename)
;;;		  ;; credits gile
;;;		  ((lambda (str1)
;;;		     (hex2dec
;;;		       (substr (vl-string-right-trim ">" str1) (+ 3 (vl-string-search ":" str1)))
;;;		     )
;;;		   )
;;;		    (vl-princ-to-string ename)
;;;		  )
;;;		)
;;;		;;============================================================;;
;;;		;; hex2dec (gile)
;;;		;; convert an hexadecimal into a decimal (int)
;;;		;;
;;;		;; Argument : un hexadedimal (string)
;;;
;;;		(defun hex2dec (s / r l n)
;;;		  (setq	r 0 l (vl-string->list (strcase s)))
;;;		  (while (setq n (car l))
;;;		    (setq l (cdr l)
;;;		          r (+ (* r 16) (- n (if (<= n 57) 48 55)))
;;;		    )
;;;		  )
;;;		)
;;;		 ;;--------------------------------------------------------;;
) ;LA
  (setq ent (bg:conv-ent-to-ename ent)) 
  (setq elst (entget ent))
  (if (vlax-property-available-p (vlax-ename->vla-object ent) 'Textstring)
    (cond
     ((= (cdr(assoc 0 elst)) "MULTILEADER")
      (setq str (bg:conv-to-str (cdr(assoc 304 elst))))
     )
     ((and ;;; MTEXT ATTRIB ADD VVA 2011-20-27
          (member (cdr(assoc 0 elst)) '("ATTRIB"))
          (member '(101 . "Embedded Object") elst)
      )
      (setq str (apply 'strcat (append(bg:massoc 3 elst)
                                      (bg:massoc 1 (member '(101 . "Embedded Object") elst))
      )         )              )
     )
     ((member (cdr(assoc 0 elst)) '("TEXT" "MTEXT" "ATTRIB"))
      (setq str (apply 'strcat (append (bg:massoc 3 elst)(bg:massoc 1 elst))))
     )
     (t (setq str (bg:conv-to-str(vla-get-TextString (vlax-ename->vla-object ent)))))
    ); cond
  ) ;if
  (if (and (member (cdr (assoc 0 elst)) '("ATTRIB" "MTEXT" "TEXT" "MULTILEADER"))
	         (setq xdict (cdr (assoc 360 elst)))
	         (setq dict (dictsearch xdict "ACAD_FIELD"))
	         (setq field (dictsearch (cdr (assoc -1 dict)) "TEXT"))
           (setq tmp str)
      ) ;and
      (if (VL-CATCH-ALL-ERROR-P 
            (VL-CATCH-ALL-APPLY '(lambda ()(setq str (foo field (cdr (assoc 2 field))))))) ;вызов 1 рекурсивной ф-ции
          (setq str tmp)
      ) ;if
  ) ;if
  str
) ;defun bg:FieldCode

;; (setq obj (car(entsel))) (bg:GetObjectIDString obj) 
(defun bg:GetObjectIDString (obj / *util* ) ;LA выводит ObjectId в строку работает под Nc21.0, 22.0
  (if (eq (type obj) 'ENAME)
    (setq obj (vlax-ename->vla-object obj))
  )
  (setq *util* (vla-get-Utility (vla-get-ActiveDocument (vlax-get-acad-object))))
  (if  (vlax-method-applicable-p *util* 'GetObjectIdString)
    (vla-GetObjectIdString *util* obj :vlax-false)
    (itoa (vla-get-ObjectId obj))
  ) ;if
 ) ;bg:GetObjectIDString
 
(defun ChangeAllObjectsColor (Doc Color  / txtstr tmp txt count _mtext-color-clean n) ;LA работает под Nc 21.0, 22.0, кроме 
;содержимого OLE и частично таблиц Nc (исправляется Таблица Nc <->Таблица DWG)
  (if Istest (progn (princ "\nChangeAllObjectsColor 1  doc = ")(princ doc)))
  (defun _mtext-color-clean ( txtstr / tmp ) ;LA лок. ф-ция в (ChangeAllObjectsColor Doc Color)
    (setq txtstr (VL-PRINC-TO-STRING txtstr)
          tmp     0
	  )
	 ; (if Istest (progn (princ "\n_mtext-color-clean 2 txtstr = ")(princ txtstr)))
	  (while (setq tmp (VL-STRING-SEARCH "\\C" txtstr tmp))
	   (setq txtstr (vl-string-subst (strcat (substr txtstr (1+ tmp) 2)(itoa Color) ";")
		                               (substr txtstr (1+ tmp) (- (1+ (VL-STRING-SEARCH ";" txtstr tmp)) tmp))
		                               txtstr
		                               tmp      )
		 ) ;setq
	 ;	 (if Istest (progn (princ "\n_mtext-color-clean 3 txtstr = ")(princ txtstr)))
	   (setq tmp (+ tmp 3))
	  ) ;while
	  ; (if Istest (progn (princ "\n_mtext-color-clean 4 txtstr = ")(princ txtstr)))
    txtstr
  ) ;defun _mtext-color-clean
  
  ;продолжение ChangeAllObjectsColor
  (vlax-for Blk	(vla-get-Blocks Doc)
   (if (= (vla-get-IsXref Blk) :vlax-false)
    (progn
     (if Istest (progn (princ "\nChangeAllObjectsColor 2 Blk = ")(princ Blk)))
	   (setq count 0 ;)
	         txt (strcat "Changed " (vla-get-name Blk))) ;LA *Model_Space or *Paper_Space
	   (grtext -1 txt)
	   (setq n 1) ;LA
     (if (not (wcmatch (vla-get-name Blk) "`*T*,`*D*")) ;_exclude table dimension
      (vlax-for Obj Blk
       (if Istest (progn (princ "\nChangeAllObjectsColor 3; count = ")(princ count)
        (princ "; (vla-get-ObjectName obj) = ")(princ (vla-get-ObjectName obj)))) 
	     (setq count (1+ count))
	     (if (= count (* n 10000)) ;LA добавила защиту от зацикливания
	      (progn
	       (setq n (1+ n))
	       (initget 1 " Y N")
	       (if (eq "N" (getkword (strcat (itoa count)
	                                     (if IsRus " объектов обработано. Продолжить? "
	                                               " objects processed. Continue? ")
	                                    "[Y/N]"))) (exit))
	     )) ;LA конец защиты от зацикливания
	     (if (zerop (rem count 10))
	         (grtext -1 (strcat txt " : " (itoa count)))) ;LA под Nc маловато места не небольших экранах!
	     (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		            (vlax-property-available-p Obj 'Color)) ;_ end of and
	         (vla-put-Color Obj Color)
	     ) ;_ end of if
	     (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		           (vlax-property-available-p Obj 'TextString)
	         ) ;_ end of and
	      (progn ;LA добавила progn для скрытия комментариев
;;; >>>--------- comment VVA 2011-04-28            
;;;	    (setq txtstr
;;;		   (if (vlax-method-applicable-p Obj 'FieldCode)
;;;		       (vla-FieldCode Obj)
;;;		       (vlax-get-property Obj 'TextString))
;;;		  )
;;; <<< --------- comment VVA 2011-04-28            

;;; >>>--------- ADD VVA 2011-04-28                                    
;;;            (setq txtstr (bg:FieldCode (vlax-vla-object->ename Obj)))
;;; <<<--------- ADD VVA 2011-04-28
;;;	    (setq tmp 0)
;;;	    (while (setq tmp (VL-STRING-SEARCH "\\C" txtstr tmp))
;;;	      (setq txtstr
;;;	      (vl-string-subst
;;;		(strcat (substr txtstr (1+ tmp) 2)(itoa Color) ";")
;;;		(substr txtstr (1+ tmp) (- (1+ (VL-STRING-SEARCH ";" txtstr tmp)) tmp))
;;;		txtstr
;;;		tmp)
;;;		    )
;;;	      (setq tmp (+ tmp 3))
;;;	      )
	    
	      (vl-catch-all-apply 
	       'vla-put-Textstring (list Obj (_mtext-color-clean (bg:FieldCode (vlax-vla-object->ename Obj)))))
	       ;;;CH VVA 15.09.2011
	     ) ;progn  
	     ) ;_ end of if
	     (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		            (= (vla-get-ObjectName obj) "AcDbBlockReference")
		            (= (vla-get-HasAttributes obj) :vlax-true)
	         ) ;_ end of and
	         (foreach att (vlax-safearray->list (vlax-variant-value (vla-GetAttributes obj))) ;_ end of vlax-safearray->list
	          (if (and (vlax-write-enabled-p att) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		                 (vlax-property-available-p att 'Color)
		            ) ;_ end of and
	              (vla-put-Color att Color)
	          ) ;_ end of if
	         ) ;_ end of foreach
	    ) ;_ end of if
       (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		            (wcmatch (vla-get-Objectname Obj)  "*Dimension*,AcDb*Leader")
	         ) ;_ end of and
	      (progn
	       (if IsTest (progn (vlax-dump-object Obj T))) ;LA
	       (if (vlax-property-available-p Obj 'ExtensionLineColor) ;LA только Dimension
	        (vl-catch-all-apply 'vla-put-ExtensionLineColor (list Obj Color))
	       ) ;LA
	       (if (vlax-property-available-p Obj 'TextColor) ;LA только Dimension
	        (vl-catch-all-apply 'vla-put-TextColor (list Obj Color))
	       ) ;LA
	       (if (vlax-property-available-p Obj 'DimensionLineColor) ;LA только Dimension
	        (vl-catch-all-apply 'vla-put-DimensionLineColor (list Obj Color))
	       ) ;LA
	       (if (vlax-property-available-p Obj 'LeaderLineColor)
	       ; (progn ;LA
	        (la:ru-error-catch ;LA добавила обработчик ошибок 19.03.2022
           (function (lambda ()  ;; Это действие, в котором может возникнуть ошибка
           ;LA может возникнуть ошибка, если усановлено несколько нанокадов
            (setq tmp (vla-getinterfaceobject (vlax-get-acad-object)
		                   (if (vl-string-search "nano" (vlax-product-key))
		                       "OdaX.AcadAcCmColor" ;LA AutoCAD.AcCmColor надо заменять на OdaX.AcadAcCmColor для nanoCAD
		                       (strcat "AutoCAD.AcCmColor." (substr (getvar "ACADVER") 1 2)) 
		                   )
		        )) ;function
		        (vla-put-colorindex  tmp  Color)
		        (vl-catch-all-apply 'vla-put-LeaderLineColor (list Obj tmp))
          ))  
          (function (lambda (x) ;; А здесь действия в случае ошибки
                (princ (if IsRus "\nПредупреждение. OdaX.AcadAcCmColor. Несоответствие версий! "
                                 "\nWarning. OdaX.AcadAcCmColor. Version mismatch! "))
                ;(exit)
          )) ;function
          ) ;la:ru-error-catch ;LA ,было progn
		     ) ;if
		     ;LA   TrueColor = #<VLA-OBJECT IAcadAcCmColor 000001A1BDF04E48> ;AcDbMLeader
         (if (vlax-property-available-p Obj 'TrueColor) ;LA добавила
	        ; (progn ;LA
	        (la:ru-error-catch ;LA добавила обработчик ошибок
           (function (lambda ()  ;; Это действие, в котором может возникнуть ошибка
           ;LA может возникнуть ошибка, если усановлено несколько нанокадов
            (setq tmp (vla-getinterfaceobject (vlax-get-acad-object)
		                   (if (vl-string-search "nano" (vlax-product-key))
		                       "OdaX.AcadAcCmColor" ;LA AutoCAD.AcCmColor надо заменять на OdaX.AcadAcCmColor для nanoCAD
		                       (strcat "AutoCAD.AcCmColor." (substr (getvar "ACADVER") 1 2)) 
		                   )
		        )) ;function
		        (vla-put-colorindex  tmp  Color)
		        (vl-catch-all-apply 'vla-put-TrueColor (list Obj tmp))
          ))  
          (function (lambda (x) ;; А здесь действия в случае ошибки
                (princ (if IsRus "\nПредупреждение. OdaX.AcadAcCmColor. Несоответствие версий! "
                                 "\nWarning. OdaX.AcadAcCmColor. Version mismatch! "))
                ;(exit)
          )) ;function
          ) ;la:ru-error-catch ;LA ,было progn
		     ) ; if  ;LA  
	      ) ;_ end of progn
	     ) ;_ end of if 
       (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		            (wcmatch (vla-get-Objectname Obj)  "AcDbTable")
	         ) ;_ end of and
	         (progn
            (and (vlax-property-available-p Obj 'RegenerateTableSuppressed)
                 (vla-put-RegenerateTableSuppressed Obj :vlax-true))
            (VL-CATCH-ALL-APPLY
               '(lambda (col row / i j)
                  (setq i '-1)
                  (repeat col
                    (setq i (1+ i) j '-1)
                    (repeat row
                      (setq j (1+ j))
                      (if (= (vla-GetCellType Obj j i) acTextCell)
                          (vla-settext obj j i (_mtext-color-clean (vla-gettext obj j i)))
                      ) ;if
                      (vla-SetCellContentColor obj j i (vla-get-truecolor obj))
                      (vla-SetCellGridColor obj j i (+ acBottomMask acTopMask acLeftMask acRightMask) (vla-get-truecolor obj))
                    ) ;repeat row
                   ) ;repeat col
                 ) ;lambda
               (list (vla-get-Columns Obj)(vla-get-Rows Obj))
            ) ;VL-CATCH-ALL-APPLY
            (and (vlax-property-available-p Obj 'RegenerateTableSuppressed)
                 (vla-put-RegenerateTableSuppressed Obj :vlax-false))
	        ) ;_ end of progn
	     ) ;if
      ) ;_ end of vlax-for
     ) ;if
    );progn
   ) ;_ end of if
  ) ;_ end of vlax-for
  (vl-cmdf "_regenall")
) ;_ end of defun ChangeAllObjectsColor

;;BGCOLOR  - Задает выбранный цвет всем объектам с запросом в стандартном диалоговом окне
;;BGCOLORCMD - Задает выбранный цвет всем объектам с запросом в командной строке
;; (setq IsTest T) (C:BGCOLORCMD) (setq IsTest nil) ;LA для проверки
;;LA работает под Nc 21.0, 22.0, кроме содержимого OLE и частично таблиц Nc (исправляется Таблица Nc <->Таблица DWG)
(defun C:BGCOLOR    () (BGCOLOR T))   ;LA добавила
(defun C:BGCOLORCMD () (BGCOLOR nil)) ;LA добавила
;(defun C:BGCOLORCMD ( / col doc) 
;; LA работал под Nc 21.0, но только 1 раз за сеанс(дефект #37124), 2-й раз вылетал на мультилиниях, на 22.0 работает
 (defun BGCOLOR ( FlDial / col doc) ;LA объединила BGCOLORCMD и BGCOLOR ;LA работает под Nc 21.0, 22.0
  (vl-load-com)
  (setq doc (vla-get-activedocument (vlax-get-acad-object)))
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
          (>= (atof(getvar "ACADVER")) 21 ))                 ;LA
      (vla-startundomark doc)
  ) ;LA
  (bg:layer-status-save)
  (if FlDial ;LA 
   (setq col (acad_colordlg 256)) ; C:BGCOLOR Displays the standard AutoCAD color selection dialog box
   (progn ;LA C:BGCOLORCMD
    (initget 7)
    (setq col (getint "\nУкажите цвет (от 1 до 256): "))
  )) ;progn if LA
  (if col ;LA
   (progn
    (ChangeAllObjectsColor doc  col);_ 7 — номер цвета
    ;;;(ChangeXrefAllObjectsColor doc  col)
  )) ;progn if LA
 
  (if IsTest (progn (princ "\nBGCOLORCMD 2 ")))
  ;;;Обработка стилей мультилиний - дефект см. #37124
  ;| ;LA -вылетало под Nc
;;  (vl-catch-all-apply
;;    '(lambda ()
;;       (entmod
;;         (mapcar '(lambda (x / y)
;;                    (if (= (car x) 350)
;;                      (progn
;;                        (setq y (mapcar '(lambda (z) (if (= (car z) 62)(cons 62 col) z))(entget (cdr x))))
;;                        (cons 350 (entmakex y))
;;                      ) ;_ end of progn
;;                      x
;;                    ) ;_ end of if
;;                  ) ;_ end of lambda
;;                 (dictsearch (namedobjdict) "ACAD_MLINESTYLE") 
;;         ) ;_ end of mapcar
;;       ) ;_ end of entmod
;;     ) ;_ end of lambda
;;  ) ;_ end of vl-catch-all-apply
 |; ;LA конец закоментированого для Nc  
 
  ;;;Обработка стилей мультилиний см. решено #37124
  (vl-catch-all-apply
    '(lambda ()
       (if (vl-string-search "nano" (vlax-product-key))   ;LA
         (progn
           (mapcar '(lambda (x / y)
                     (if (= (car x) 350)
                      (progn
                        (setq y (mapcar '(lambda (z) (if (= (car z) 62)(cons 62 col) z))(entget (cdr x))))
                        (entmod y)
                      ) ;_ end of progn
                     ) ;_ end of if
                    ) ;_ end of lambda
                    (dictsearch (namedobjdict) "ACAD_MLINESTYLE") 
           ) ;_ end of mapcar
         ) ;progn
         (entmod
          (mapcar '(lambda (x / y)
                    (if (= (car x) 350)
                      (progn
                        (setq y (mapcar '(lambda (z) (if (= (car z) 62)(cons 62 col) z)) (entget (cdr x)))) 
                        (cons 350 (entmakex y))
                      ) ;_ end of progn
                      x
                    ) ;_ end of if
                  ) ;_ end of lambda
                 (dictsearch (namedobjdict) "ACAD_MLINESTYLE") 
         ) ;_ end of mapcar
        ) ;_ end of entmod
       ) ; end of if
     ) ;_ end of lambda
  ) ;_ end of vl-catch-all-apply
 ;; LA конец исправления из #37124
  
  (bg:layer-status-restore)
  (vla-regen doc acallviewports)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark doc)
  ); LA
  (princ)
) ;defun BGCOLOR

;;; Returns the list of names of blocks with 1 primitive thing 
;;; возвращает список имен блоков с 1 примитивом (блоки A$C* или любые другие, состоящие из
;;; одного примитва и этот примитив - блок
; (bg:block-list-one-item)
(defun bg:block-list-one-item ( / Doc Blks blkname) ;LA работает под Nc 21.0, 22.0
  (setq Doc (vla-get-activedocument (vlax-get-acad-object))
	Blks (vla-get-Blocks Doc)
	)
  (vlax-for Blk Blks
    (if (and (= (vla-get-IsXref Blk) :vlax-false)
	  (= (vla-get-IsLayout Blk) :vlax-false)
	  (= (vla-get-count Blk) 1)
;;;Берем только блоки "A$C*" и состоящие из другого блока
	  (or (wcmatch (vla-get-name Blk) "A$C*")
	      (= (vla-get-ObjectName (vla-item Blk 0)) "AcDbBlockReference")
	      )
          ;_ (= (vla-get-ObjectName (vla-item Blk 0)) "AcDbAttributeDefinition")
	  )
      (setq blkname (cons (vla-get-Name Blk) blkname))
      )
    )
    blkname
) ;defun bg:block-list-one-item

;; (bg:block-GetXclip (vlax-ename->vla-object(car(entsel "\nВыберите подрезанный xref")))) ;LA для проверки
(defun bg:block-GetXclip (vla-obj / result) ;LA работает под Nc 21.0, 22.0; см. bgblock-GetXclip.dwg,  bgblock-GetXclip(1).dwg
   (progn ;LA добавила progn для скрытия старого закомментированого фрагметна
;;;http://www.cadtutor.net/forum/showthread.php?63267-Is-there-a-condition-statement-to-find-out-if-Xclip-was-used
;;;	;;;	(defun LM:XClipBoundary ( ename / xdict )
;;;	;;;	    (if
;;;	;;;	        (setq xdict (cdr (assoc 360 (entget ename))))
;;;	;;;	        (LM:XClipBoundary xdict)
;;;	;;;	        (if
;;;	;;;	            (and
;;;	;;;	                (eq "SPATIAL_FILTER" (cdr (assoc 0 (setq ename (entget ename)))))
;;;	;;;	                (eq 1 (cdr (assoc 71 ename)))
;;;	;;;	            )
;;;	;;;	            (   (lambda ( massoc ) (massoc 10 ename))
;;;	;;;	                (lambda ( key elist / item )
;;;	;;;	                    (if (setq item (assoc key elist))
;;;	;;;	                        (cons (cdr item) (massoc key (cdr (member item elist))))
;;;	;;;	                    )
;;;	;;;	                )
;;;	;;;	            )
;;;	;;;	        )
;;;	;;;	    )
;;;	;;;	)

;;;Через LISP без vla
;;;  (and (setq blk (car(entsel "\nУкажи подрезанный блок")))
;;;     (setq dict (cdr(assoc 360 (entget blk))))
;;;     (if (and
;;;           (setq sp (member '(3 . "ACAD_FILTER") (entget dict)))
;;;           (setq sp (cdr(assoc 360 sp)))
;;;           (setq sp (member '(3 . "SPATIAL")(entget sp)))
;;;           (setq sp (cdr(assoc 360 sp)))
;;;           )
;;;       (progn
;;;         (if (= (cdr(assoc 71 (entget sp))) 1)
;;;           (alert "Блок подрезан\nКонтур включен")
;;;           (alert "Блок подрезан\nКонтур ОТКЛЮЧЕН")
;;;         )
;;;         )
;;;       (alert "Блок не подрезан")
;;;         )
;;;     )
;;Если блок подрезан, возвращает SPATIAL, иначе nil
;;If the block is clipped, returns SPATIAL filter, differently return nil
;; test
   )  
   (vl-catch-all-apply
      '(lambda ( )
         (if(and(eq (vla-get-ObjectName vla-obj) "AcDbBlockReference")
                (eq :vlax-true (vla-get-HasExtensionDictionary vla-obj))  )
            (setq result
                   (entget
                       (vlax-vla-object->ename
                           (vla-item
                               (vla-item(vla-getExtensiondictionary vla-obj) "ACAD_FILTER")
                               "SPATIAL"
                           )
                       )
                   )
              ) ;setq
           ) ;if
       ) ;lambda
   ) ;vl-catch-all-apply
   result
) ;defun bg:block-GetXclip
(progn ;LA добавила progn для скрытия старого закомментированого фрагметна
;;;(defun bg:block-get-name (blkobj)
;;;(cond
;;;  ((and (vlax-property-available-p blkobj 'isdynamicblock)
;;;	(= (vla-get-isdynamicblock blkobj) :vlax-true)
;;;	) ;_ end of and
;;;   (vla-get-effectivename blkobj)
;;;   )
;;;  (t (vla-get-name blkobj))
;;;  ) ;_ end of cond
;;;  )

;;;	(defun LM:EffectiveName ( blockentity / name repbtag )
;;;	;;----------------=={ Effective Block Name }==----------------;;
;;;	;;                                                            ;;
;;;	;;  Returns the effective name of a block.                    ;;
;;;	;;------------------------------------------------------------;;
;;;	;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;;	;;------------------------------------------------------------;;
;;;	;;  Arguments:                                                ;;
;;;	;;  blockentity - Block Reference Entity name                 ;;
;;;	;;------------------------------------------------------------;;
;;;	;;  Returns:  True block name as per the block definition     ;;
;;;	;;------------------------------------------------------------;;
;;;	  
;;;	  (if (wcmatch (setq name (cdr (assoc 2 (entget blockentity)))) "`**")
;;;	    (if
;;;	      (and
;;;	        (setq repbtag
;;;	          (cdadr
;;;	            (assoc -3
;;;	              (entget
;;;	                (cdr
;;;	                  (assoc 330
;;;	                    (entget (tblobjname "BLOCK" name))
;;;	                  )
;;;	                )
;;;	               '("AcDbBlockRepBTag")
;;;	              )
;;;	            )
;;;	          )
;;;	        )
;;;	        (setq repbtag (handent (cdr (assoc 1005 repbtag))))
;;;	      )
;;;	      (setq name (cdr (assoc 2 (entget repbtag))))
;;;	    )
;;;	  )
;;;	  name
;;;	)

;;; Список анонимных блоков динамического
;;;(defun LM:getanonymousreferences ( blk / ano def lst rec ref )
;;;;; Get Anonymous References  -  Lee Mac
;;;;; Returns the names of all anonymous references of a block.
;;;;; blk - [str] Block name/wildcard pattern for which to return anon. references
;;;    (setq blk (strcase blk))
;;;    (while (setq def (tblnext "block" (null def)))
;;;        (if
;;;            (and (= 1 (logand 1 (cdr (assoc 70 def))))
;;;                (setq rec
;;;                    (entget
;;;                        (cdr
;;;                            (assoc 330
;;;                                (entget
;;;                                    (tblobjname "block"
;;;                                        (setq ano (cdr (assoc 2 def)))
;;;                                    )
;;;                                )
;;;                            )
;;;                        )
;;;                    )
;;;                )
;;;            )
;;;            (while
;;;                (and
;;;                    (not (member ano lst))
;;;                    (setq ref (assoc 331 rec))
;;;                )
;;;                (if
;;;                    (and
;;;                        (entget (cdr ref))
;;;                        (wcmatch (strcase (LM:al-effectivename (cdr ref))) blk)
;;;                    )
;;;                    (setq lst (cons ano lst))
;;;                )
;;;                (setq rec (cdr (member (assoc 331 rec) rec)))
;;;            )
;;;        )
;;;    )
;;;    (reverse lst)
;;;)
) ;LA
;; (setq blockentity (car(entsel))) (bg:block-get-name blockentity) ;выбираем блок ;LA для проверки
(defun bg:block-get-name (blockentity / name repbtag ) ;LA работает под Nc 21.0, 22.0
  (if (eq (type blockentity) 'VLA-OBJECT)(setq blockentity (vlax-vla-object->ename blockentity)))
;;;get from Lee Mac  LM:EffectiveName
;;; http://www.theswamp.org/index.php?topic=37493.0
;;; http://forum.dwg.ru/showthread.php?t=65082
;;----------------=={ Effective Block Name }==----------------;;
;;                                                            ;;
;;  Returns the effective name of a block.                    ;;
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Arguments:                                                ;;
;;  blockentity - Block Reference Entity name                 ;;
;;------------------------------------------------------------;;
;;  Returns:  True block name as per the block definition     ;;
;;------------------------------------------------------------;;
 
 
  (if (wcmatch (setq name (cdr (assoc 2 (entget blockentity)))) "`**")
    (if (and (setq repbtag (cdadr (assoc -3 (entget (cdr (assoc 330 (entget (tblobjname "BLOCK" name))))
                                                    '("AcDbBlockRepBTag")
             )             )      )         )
             (setq repbtag (handent (cdr (assoc 1005 repbtag))))
        ) ;and
        (setq name (cdr (assoc 2 (entget repbtag))))
    ) ;if
  ) ;if
  name
) ;defun bg:block-get-name

;;; Взрывает блоки, состоящие из одного примитива и этот примитив=блок
;;; Explode blocks consisting of one primitive thing (it is possible other block)
;; (bg:block-explode-one-item)  ;LA для проверки
(defun bg:block-explode-one-item ( / blklist count xcount tmp) ;LA работает под Nc 21.0, 22.0
  (bg:layer-status-save)
  (setq blklist (bg:block-list-one-item) count 0 xcount 0)
  (vlax-for obj
   (vla-get-block
    (vla-item (vla-get-Layouts(vla-get-activedocument (vlax-get-acad-object)))
              (getvar "CTAB")
   ))
   (if (and (eq (vla-get-ObjectName obj) "AcDbBlockReference")
	          (not (vlax-property-available-p obj 'path))
	          (vl-position (bg:block-get-name obj) blklist)    )
      (progn
	     (if (and (setq tmp (bg:block-GetXclip obj))
		            (= 1 (cdr(assoc 71 tmp)))		 )
	      (progn
	       ;;; Здесь должна быть реакция на подрезанный блок
	       ;;; Игнорируем
	       (setq xcount (1+ xcount))
	      )
	      (progn
	       (bg:explode-block (vlax-vla-object->ename obj) nil)
	       (setq count (1+ count))
	     )) ;progn if
	 )  ) ;progn if    
  ) ;vlax-for
  (bg:layer-status-restore)
  (list count xcount) ;count=кол-во расчлененных вложенных блоков, xcount=кол-во игнорированных подрезанных блоков
) ;defun bg:block-explode-one-item

;;en - ename имя примитива (setq en (car(entsel)))
;;Rdn - string name of appid or nil - all все
;; (setq elist (entget (setq en (car(entsel))) (list "*"))) ;посмотреть XDATA выбраного объекта
;; (setq Rdn nil)(setq Rdn "VIA_WD_UM" ) (bg:del-XDATA-from-ename en Rdn) ; Удалить все Расширенные данные ( XDATA РД ) 
;; (bg:del-XDATA-from-ename (car(entsel)) "VIA_WD_UM") ; Удалить Расширенные данные приложения "VIA_WD_UM"( XDATA РД ) 
;; Есть проблема с удалением XDATA, если есть скобки {} и несколько привяз. приложений, но по описанию эта проблема также в аналоге
;; В примере ниже XDATA не удаляются, т.к. это системные (Electrics) XDATA по-видимому, а не пользовательские
 ;|  ;Пример elist из C:\Lida\_sample\Xdata\Electrical_Test.dwg 
 ((-1 . #<Имя примитива: 0000025F5D77B440>) (0 . "INSERT") (5 . "111DD") (102 . "{ACAD_XDICTIONARY") 
 (360 . #<Имя примитива: 0000025F315D4920>) (102 . "}") (330 . #<Имя примитива: 0000025F48462670>) (100 . "AcDbEntity") 
 (67 . 0) (410 . "Model") (8 . "PSYMS") (100 . "AcDbBlockReference") (66 . 1) (2 . "wd_ptag")  (10 601.943 3727.82 0.0) 
 (41 . 25.0) (42 . 25.0) (43 . 25.0) (50 . 1.5708) (70 . 1) (71 . 1) (44 . 0.0) (45 . 0.0) (210 0.0 0.0 1.0)
 (-3 ("VIA_WD_FP"    (1002 . "{") (1000 . "") (1002 . "}")) ("VIA_WD_HDL"       (1002 . "{") (1000 . "2AB3") (1002 . "}"))
     ("VIA_WD_CNT"   (1002 . "{") (1000 . "") (1002 . "}")) ("VIA_WD_UM"        (1002 . "{") (1000 . "") (1002 . "}")) 
     ("VIA_WD_MOUNT" (1002 . "{") (1000 . "") (1002 . "}")) ("VIA_WD_GROUPWITH" (1002 . "{") (1000 . "") (1002 . "}")) ))
 |;
;; используется в bg:delete-from-layer (в лок. функции _loc-delete-items) 
;; LA см. (C:APPDEL) ниже !!!
(defun bg:del-XDATA-from-ename (en Rdn / elist sub) ;LA как-то работает под Nc 22.0
 ; (setq Istest T)(setq Istest nil)
 ; (if IsTest (progn (princ "\n1 bg:del-XDATA-from-ename ")(princ sub)))
  (if (= (type en) 'vla-object)
    (setq en (vlax-vla-object->ename en))
  ) ;if
  
  (setq elist (entget en (list "*"))) ;посмотреть XDATA 
  ; (if IsTest (progn (princ "\n2 bg:del-XDATA-from-ename elist = ")(princ elist))) ;LA
  (if (null Rdn)
    (progn
      ;(setq sub3 (assoc -3 elist)) ;LA доп. тестирование
      ;(setq elist (vl-remove sub3 elist))(entmod elist) (entupd en) ;LA доп. тестирование
      (setq sub (mapcar 'car (cdr (assoc -3 elist))))
      (setq sub	(vl-remove-if '(lambda (x) (wcmatch (strcase x) "ACAD*,ACDB*")) sub))
  ;    (if IsTest (progn (princ "\n3 bg:del-XDATA-from-ename sub =")(princ sub))) ;LA
      (if sub
       (progn
	      (setq sub (list (cons -3 (mapcar 'list sub))))
	    ;  (if IsTest (progn (princ "\n4 bg:del-XDATA-from-ename sub =")(princ sub))) ;LA
	      (entmod (append (entget en) sub))
	    )) ;progn if 
    ) ;progn
    (progn
     (foreach i (cdr (assoc -3 elist))
	    (if (not (wcmatch (strcase (car i)) (strcase Rdn)))
	        (setq sub (append sub (list i)))
	        (setq sub (append sub (list (list (car i)))))
	    ) ;if
	    
     ) ;foreach i
     (setq sub	(cons -3 sub)
	        elist (subst sub (assoc -3 elist) elist)
	        elist (entmod elist)
     ) ;setq
  ;   (if IsTest (progn (princ "\n5 bg:del-XDATA-from-ename sub =")(princ sub))) ;LA
    ) ;progn
  ) ;if
) ;defun bg:del-XDATA-from-ename

;;LA (setq obj (car(entsel))) (setq obj (vlax-ename->vla-object obj)) (bg:get-all-atts obj) ;LA для INSERT
;; obj - VLA-OBJECT IAcadBlockReference или ENAME
;; Возвращает список всех атрибутов блока:
; (("Tag1" . "Val1") ("Tag2" . "Val2)...("Tagn" . "Valn"))
;; (("PORT_1" . "Port 1") ("PORT_1_TERMINAL2" . "-") ("PORT_1_TERMINAL1" . "+") ("PORT_2" . "Port 2") ("PORT_2_TERMINAL2" . "-") ("PORT_2_TERMINAL1" . "+") ("PORT_3" . "Port 3") ("PORT_3_TERMINAL2" . "-") ("PORT_3_TERMINAL1" . "+") ("PORT_4_TERMINAL2" . "-") ("PORT_4_TERMINAL1" . "+") ("FFBUS_POZITION" . "\\W0.80000;FFBUS_POZITION") ("FLAME_POZITION" . "\\W0.70000;FLAME_POZITION") ("CABLE_SEG_TERMINAL2" . "-") ("CABLE_SEG_TERMINAL1" . "+"))
(defun bg:get-all-atts (obj) ;LA работает под Nc 21.0, 22.0 для простых и дин.блоков
  (if (= (type obj) 'ENAME)(setq block (vlax-ename->vla-object obj))) ;LA добавила
  (if (and obj 
           (vlax-property-available-p obj 'Hasattributes)
	         (eq :vlax-true (vla-get-HasAttributes obj))
      ) ;and
    (vl-catch-all-apply
     (function	(lambda	()
	    (mapcar (function (lambda (x)
			                   (cons (vla-get-TagString x) (bg:FieldCode (vlax-vla-object->ename x))
                     ;;; Не используем (vla-get-TextString x), т.к если атрибут содержит UNICOD символы
                     ;;; например "Н\U+2082О", то (vla-get-TextString x) вернет "Н?О" + сохраняем, если есть поля
			        )         ))
		          (append (vlax-invoke obj 'Getattributes)
		                  (vlax-invoke obj 'Getconstantattributes)
		)))      )  ) ;vl-catch-all-apply
  ) ;if
) ;defun bg:get-all-atts

;;
;; (setq att_list(list ( cons "PORT_1" "Port 1") (cons "PORT_1_TERMINAL2" "-") (cons "PORT_1_TERMINAL1" "+") (cons "PORT_2" "Port 2") (cons "PORT_2_TERMINAL2" "-")))
;; (setq block (car(entsel))) (bg:set-atts-bylist block att_list) ;LA для проверки
(defun bg:set-atts-bylist (block att_list) ;LA работает под Nc 21.0, 22.0
;; obj - Ename or Vla object of block
;; att_list - list ((Tag_Name1 . Value1)(Tag_Name2 . Value2) ...)
;;                 Tag_Name - string
;;                    Value - string
 (if (= (type block) 'ENAME)(setq block (vlax-ename->vla-object block)))
 (setq att_list (mapcar '(lambda(x)(cons (strcase (car x))(cdr x))) att_list))
 (if (and block
          (vlax-write-enabled-p block) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
          (not(vlax-erased-p block))
          (= (vla-get-ObjectName block) "AcDbBlockReference")
          (vlax-property-available-p block 'Hasattributes)
	        (eq :vlax-true (vla-get-HasAttributes block))
     ) ;and
     (mapcar
      (function
       (lambda ( attrib / tmp )
        (if (setq tmp (assoc(strcase(vla-get-TagString attrib)) att_list))
          (progn
            (vla-put-TextString attrib " ")
            (vla-put-TextString attrib  (cdr tmp))
      ))) ) ;function 
     (vlax-invoke block 'GetAttributes)
    ) ;mapcar
 ) ;if
) ;defun bg:set-atts-bylist

;;
;; (bg:DynToStatic (car(entsel)) nil) ;конвертирует дин./стат. блоки в анонимные статические  *UXXXX
;; (bg:DynToStatic (car(entsel)) T) ;конвертирует дин./стат. блоки в статич.блоки, присваивая имя $BG$_XXXXXXXX_N
(defun bg:DynToStatic ( obj ConvertMode / i name ret attlist) ;LA работает под Nc 21.0, 22.0; используется в bg:ConvertDynBlock
;;; obj - vla object
;;; ConvertMode - nil ConvertToAnonymousBlock
;;;             - t   ConvertToStaticBlock 
;;; Return - t - if converted or nil if error  
;;;"ConvertToStaticBlock" or "ConvertToAnonymousBlock"
  (if (= (type obj) 'ENAME)
      (setq obj (vlax-ename->vla-object obj))
    )
;;;  (setq attlist (bg:get-all-atts obj))
  (cond
    ((and ConvertMode
          (vlax-write-enabled-p obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
          (vlax-method-applicable-p obj "ConvertToStaticBlock")
          )
     (setq name (strcat "$BG$_" (substr (rtos (getvar "CDATE") 2 9) 10) "_")) ;имя $BG$_XXXXXXXX_N
     (setq i 1)
     (while (tblsearch "Block" (strcat name (itoa i)))(setq i (1+ i)))
     (setq name (strcat name (itoa i)))
     (setq ret
            (not
              (VL-CATCH-ALL-ERROR-P
                (vl-catch-all-apply 'vlax-invoke (list obj "ConvertToStaticBlock" name))
                )
              )
           )
     )
    ((and (not ConvertMode)
          (vlax-write-enabled-p obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
          (vlax-method-applicable-p obj  "ConvertToAnonymousBlock")
          )
     (setq ret
            (not
              (VL-CATCH-ALL-ERROR-P
                (vl-catch-all-apply 'vlax-invoke (list obj  "ConvertToAnonymousBlock"))
                )
              )
           )
     )
    (t nil)
    )
  ;;; Add VVA 2014-10-08 v.2.28
   (vl-catch-all-apply
    '(lambda()
     (vlax-map-Collection
       (vla-item (vla-get-Blocks(vla-get-activedocument (vlax-get-acad-object)))(vla-get-name obj))
       '(lambda (x)(if(eq(vla-get-Visible x) :vlax-false)(vla-delete x)))
       )
     )
   )                         

  ;;;VVA 2011-11-09 Remove
;;;  (if (and ret attlist)
;;;    (progn
;;;      (bg:set-atts-bylist obj attlist)
;;;      (command "_.Updatefield" (vlax-vla-object->ename obj) "")
;;;      (while (> (getvar "CMDACTIVE") 0) (command ""))
;;;      )
;;;    )
  ret
) ;defun bg:DynToStatic

;; Конвертирует все/выбранные дин. в статич.блоки, присваивая имя $BG$_XXXXXXXX_N или анонимные *UXXXX, используя bg:DynToStatic
;; (bg:ConvertDynBlock nil nil) (bg:ConvertDynBlock nil T) (bg:ConvertDynBlock T nil) (bg:ConvertDynBlock T T)
(defun bg:ConvertDynBlock ( ConvertMode selectall / doc ss i *error* obj name j k str)  ;LA работает под Nc 21.0, 22.0
;;; Conver Dynamic Blocks to Static
  ;;; ConvertMode - nil ConvertToAnonymousBlock  (только динамические блоки в статические анонимные *UXXXX)
  ;;;             - t   ConvertToStaticBlock  (только динамические в статические с именами $BG$_XXXXXXXX_N)
  ;;; selectall   - t - select all
  ;;;             - nil - select
  ;;; Use (bg:ConvertDynBlock nil nil)
  ;;; Use (bg:ConvertDynBlock t nil)
  (defun *error* (msg)
     (princ msg)
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
         (vla-endundomark doc)
     ) ;LA
     (bg:layer-status-restore)
  )
  (vl-load-com)
  (if ConvertMode
    (setq str "ConvertToStaticBlock")
    (setq str "ConvertToAnonymousBlock")
  )
  (setq doc (vla-get-activedocument (vlax-get-acad-object)))
  (if (null selectall)
   (progn
    (princ (strcat "\n<< " str " >> "
                   (if IsRus "Выберите динамические блоки" ;LA
                             "Select dynamic blocks"      )
    )      ) 
    (setq ss (ssget "_I" '((0 . "Insert"))))
   )
  ) ;if
  (SSSETFIRST)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark doc)
  ) ;LA
  (bg:layer-status-save)
  (if
    (if selectall
      (setq ss (ssget "_X" '((0 . "Insert"))))
      (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
             (>= (atof(getvar "ACADVER")) 21 ))                  ;LA       
         (or ss (setq ss (ssget "_:L" '((0 . "Insert")))))
         (or ss (setq ss (ssget '((0 . "Insert")))))  );LA
    ) ;if
    (repeat (setq k 0 i (sslength ss))
      (setq obj (vlax-ename->vla-object(ssname ss (setq i (1- i)))))
      (if (and (vlax-write-enabled-p obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
               (= (vla-get-isdynamicblock obj) :vlax-true) ;блок дин.=да
               (vlax-method-applicable-p obj str)
               (setq k (1+ k))
          )
          (bg:DynToStatic obj ConvertMode) ; конвертация блока obj
      ) ;if
    ) ;repeat
  ) ;if
  (bg:layer-status-restore)
  (vla-regen doc acallviewports)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark doc)
  ) ;LA
  (terpri)(princ str)(princ " - ")(princ k)
  (princ)
) ;defun bg:ConvertDynBlock
;;; Conver Dynamic Blocks to Anonymous
(defun C:BGBLDYN2A () (bg:ConvertDynBlock nil nil)) ;LA работает под Nc 21.0, 22.0
;;; Conver Dynamic Blocks to Static
(defun C:BGBLDYN2S () (bg:ConvertDynBlock t nil))  ;LA работает под Nc 21.0, 22.0
;;; Conver ALL Dynamic Blocks to Anonymous
(defun C:BGBLALLDYN2A () (bg:ConvertDynBlock nil t)) ;LA работает под Nc 21.0, 22.0
;;; Conver ALL Dynamic Blocks to Static
(defun C:BGBLALLDYN2S () (bg:ConvertDynBlock t t)) ;LA работает под Nc 21.0, 22.0
;;
; BGBLXCLIPEXP ;LA работает под  Nc >= 22.0, < 22.0 взрывается по EXPLODE (без подрезки)
; (setq IsTest T) (c:BGBLXCLIPEXP) (setq IsTest nil) ;LA для проверки
(defun c:BGBLXCLIPEXP( / ent actdoc obj point ) ;LA под Nc 22.0 работает, под Nc 21.0 не работает из-за (bg:block-xclip-exp obj point)
  (vl-load-com)
  ((lambda (ent actdoc)
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
         (vla-startundomark actdoc)
     ) ;LA
     (if (and ent (not (vl-catch-all-error-p ent)))
       (progn ;LA
        (if IsTest (progn(princ "\n1 BGBLXCLIPEXP ent = ")(princ ent)))
        ((lambda (obj point)
          (if (bg:block-GetXclip (vlax-ename->vla-object obj))
           (progn
            (if IsTest (progn(princ "\n2 BGBLXCLIPEXP obj = ")(princ obj)(princ "; point = ")(princ point)))
            (bg:block-xclip-exp obj point)
           )
           (prompt (if IsRus "\nУказанный блок не подрезан" ;LA
                             "\nThe specified block is not clipped"))
          ) ;if
         ) ;lambda
         (car ent) (cadr ent) ;obj, point ;LA значения параметров
         
       )) ;progn ;LA
     ) ;if
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
         (vla-endundomark actdoc)
     ) ;LA
   ) ;lambda
   ;; Получаем значения параметры для lambda
    (vl-catch-all-apply 
     'entsel (list (if IsRus "\nУкажите подрезанный блок: " ;LA
                             "\nSelect clipped block")) ;ent
   )
   (vla-get-activedocument (vlax-get-acad-object)) ;actdoc
  ) 
  (princ)
); end c:BGBLXCLIPEXP

(defun bg:block-xclip-exp (blk point / pline_obj *error*) ;LA работает под Nc 22.0, не работает под Nc 21.0 (все удаляет внутри)
  (defun *error* (msg)
    (princ msg)
    (mapcar '(lambda (x)(if(vlax-write-enabled-p x) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                           (vla-put-visible x :vlax-true))) hiden) 
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-endundomark (vla-get-activedocument (vlax-get-acad-object)))
    ) ;LA
  )

  (if (vl-cmdf "_xclip" blk "" "_P") ;LA в Nc 21.0 эта граница только для внешних ссылок, для блоков надо _CLIP?
    ((lambda (pline_obj)
       (vl-cmdf "_.zoom" "_O" pline_obj "")
       ((lambda(lst_exp_obj lst_xclip eps)
          (if (and lst_exp_obj
                   lst_xclip
              )
            ((lambda(is_int_point)
               ((lambda(nbr_xclip pline_trim / i e1)
                  (setq i 0 ss (ssadd))
                  (while (< i (sslength nbr_xclip))
                    (if (not(vl-position(vlax-ename->vla-object(setq e1(ssname nbr_xclip i))) lst_exp_obj))
                      (progn
                        (setq hiden (cons (vlax-ename->vla-object e1) hiden))
                        (ssdel e1 nbr_xclip)
                      )
                      (setq i (1+ i))
                    )
                  ) ;while
                  (mapcar '(lambda (x)(if(vlax-write-enabled-p x) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                                         (vla-put-visible x :vlax-false))) hiden)
                  (VL-CATCH-ALL-APPLY
                   '(lambda()
                    (if (and nbr_xclip pline_trim)
                     (progn
                      (foreach item (mapcar 'vlax-vla-object->ename lst_exp_obj)
                        (if is_int_point
                          (if (not (ssmemb item nbr_xclip))
                            (entdel item)
                            )
                          (if (ssmemb item nbr_xclip)
                            (entdel item)
                            )
                          )
                      ) ;foreach
                      (apply 'vl-cmdf (append (list "_.trim" pline_obj "" "_F")  ;LA под Nc 21.0 все удаляет
                                              ((lambda(ed_pline_trim)
                                                 (append (mapcar 'cdr (vl-remove-if-not (function (lambda(x) (= (car x) 10)))
                                                                                        ed_pline_trim
                                                                      )
                                                         ) ;mapcar
                                                         (list (cdr (assoc 10 ed_pline_trim)))
                                                 ) ;append
                                               ) ;lambda
                                               (entget pline_trim) ;ed_pline_trim
                                              )
                                              (list "" "")
                                     ) ;append 
                      ) ;apply
                      (entdel pline_trim)
                    ) ;progn
                   ) ;if
                  ) ) ;lambda() VL-CATCH-ALL-APPLY
                  (mapcar '(lambda (x)(if(vlax-write-enabled-p x) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                                         (vla-put-visible x :vlax-true))) hiden) 
                  (vl-cmdf "_.zoom" "_P")
                 ) ;lambda
                 (if is_int_point               ;nbr_xclip
                   (ssget "_CP" lst_xclip)
                   (ssget "_WP" lst_xclip)
                 ) ;if 
                 ((lambda(reverse-point)        ;pline_trim
                    (if reverse-point
                      (if (vl-cmdf "_.offset" eps pline_obj (get-reverse-point point pline_obj 0.1) "")
                        (entlast)
                      ) ;if
                    ) ;if
                  ) ;lambda
                  (get-reverse-point point pline_obj 0.1) ;reverse-point
                 )
                )
              ) ;lambda
              ((lambda(point_obj / result)      ;is_int_point
                 (setq result (ssmemb point_obj (ssget "_CP" lst_xclip)))
                 (entdel point_obj)
                 result
               ) ;lambda
               (entmakex (list '(0 . "POINT") (cons 10 point))) ;point_obj
              )
             )
            ) ;if
          ) ;lambda
         (bg:burst-list blk)                   ;lst_exp_obj 
         (mapcar 'cdr (vl-remove-if-not (function (lambda(x) (= (car x) 10))) (entget pline_obj))) ;lst_xclip
         (min 0.1 (* (getvar 'viewsize) 0.01)) ; eps
       )
       (entdel pline_obj)
       (vl-cmdf "_.zoom" "_P")
       ) ;lambda
      (entlast)       ;pline_obj
    ) 
  ) ;if
); end bg:block-xclip-exp

(defun get-reverse-point (pt obj e / cl_pt p1 p2 c_p) ;LA используется в (bg:block-xclip-exp blk point)
  ((lambda (cl_pt)
     (if cl_pt
       ((lambda(param_cl_pt end_param)
          (if param_cl_pt
            ((lambda (p1 p2)
               (if (not p1) (setq p1 (vlax-curve-getPointAtParam obj e)))
               (if (not p2) (setq p2 (vlax-curve-getPointAtParam obj (- end_param e))))
               ((lambda (c_p)
                  (polar pt (angle pt c_p) (+ (distance pt c_p) e))
                ) ;lambda
                (polar p1 (angle p1 p2) (* (distance p1 p2) 0.5))
               )
             ) ;lambda
             (vlax-curve-getPointAtParam obj (+ param_cl_pt e))
             (vlax-curve-getPointAtParam obj (- param_cl_pt e))
            )
           ) ;if
         ) ;lambda
         (vlax-curve-getParamAtPoint obj cl_pt)
         (vlax-curve-getEndParam obj)
       )
     ) ;if
   ) ;lambda
   (vlax-curve-getClosestPointTo obj pt)
  )
); end get-reverse-point

(defun c:BGBLCC () (bg:block-color) (princ)) ;LA под Nc 21.0 работает, кроме таблиц Dwg/Nc, растров, OLE в блоке, но можно BGENCC для таблиц

(defun la:color () ;LA вынесла в функцию под Nc 21.0, повторялось 3 раза с ошибкой. Работает под Nc 22.0
   (cond
                   ((and (listp *BG-COLOR*)(assoc 430 *BG-COLOR*))
                    (acad_truecolordlg (assoc 430 *BG-COLOR*))
                    )
                   ((and (listp *BG-COLOR*)(assoc 420 *BG-COLOR*))
                    (acad_truecolordlg (assoc 420 *BG-COLOR*))
                    )
                   ((and (listp *BG-COLOR*)(assoc 62 *BG-COLOR*))
                    (acad_truecolordlg (assoc 62 *BG-COLOR*))
                    )
                   (t (acad_truecolordlg  (cons 62 256)))  ;LA было 256
   )
); defun la:color
;;BGENCC - Изменяет цвет выбранного элемента блока ; LA не меняет цвет измененных фрагм. MTEXT в блоках
(defun c:BGENCC () (pl:block-ent-color) (princ)) ;LA работает под Nc 21.0, 22.0; 
;;; Alaspher encc http://forum.dwg.ru/showthread.php?t=1036
;;; http://forum.dwg.ru/showpost.php?p=166220&postcount=18
(defun pl:block-ent-color ( / adoc color ent lays) ;LA не работает  bg:put-color под Nc 21.0, под 22.0 сработало
    (setq adoc   (vla-get-activedocument (vlax-get-acad-object))
          lays   (vla-get-layers adoc))
    (setq  color      (la:color *BG-COLOR*)  ;LA вынесла в отдельную функцию
          *BG-COLOR*  color                ) ;setq
    (if color
        (progn 
         (setvar "errno" 0)
         (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
             (vla-startundomark adoc)
         ) ;LA
         (while (and (not (vl-catch-all-error-p
                               (setq ent (vl-catch-all-apply
                                          (function nentsel)
                                          (list (if IsRus ;LA
                                                     "\nВыберите примитив <Выход>:"
                                                     "\nSelect entity <Exit>:"    )
                     )    )    )         )   )
                     (/= 52 (getvar "errno"))
                 )
                 (if ent
                  (progn
                   (setq ent (vlax-ename->vla-object (car ent))
                         lay (vla-item lays (vla-get-layer ent))
                   )
                   (if (= (vla-get-lock lay) :vlax-true)
                    (progn 
                     (setq layloc (cons lay layloc))
                     (vla-put-lock lay :vlax-false)
                   ))              
                   ;(vl-catch-all-apply (function vla-put-color) (list ent color))
                   (vl-catch-all-apply (function bg:put-color) (list ent color))
                   (vla-regen adoc acAllViewports)
                  )
                  (princ (if IsRus ;LA
                             "\nПустой выбор! Повторите. "
                             "\nNothing selection! Try again. "))
                 ) ;if
         ) ;while
         (foreach i layloc (vla-put-lock i :vlax-true))
         (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
             (vla-endundomark adoc)
         ) ;LA
        ) ;progn
    ) ;if
    (princ)
) ;defun pl:block-ent-color
;;;На основе Alaspher blcc encc http://forum.dwg.ru/showthread.php?t=1036
;; (setq IsTest T)(bg:block-color)(setq IsTest nil)
(defun bg:block-color ( / adoc blocks color ins lays ss e2) ;LA работает под 21.0, 22.0, кроме обработки таблиц в блоке
    (setq adoc   (vla-get-activedocument (vlax-get-acad-object))
          blocks (vla-get-blocks adoc)
          lays   (vla-get-layers adoc))
    (setq  color      (la:color )  ;LA вынесла в отдельную функцию
          *BG-COLOR*  color     ) ;setq
    (if color
        (progn
         (setvar "errno" 0)
         (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
             (vla-startundomark adoc)
         );LA
         (while (and (not (vl-catch-all-error-p
                           (setq ins (vl-catch-all-apply
                                      (function entsel)
                                      (list (if IsRus ;LA
                                                "\nВыберите блок <Выход>:"
                                                "\nSelect block <Exit>:"))
                                                          
                     )    )        ) )
                     (/= 52 (getvar "errno"))
                ) ;and
            ;(if IsTest (progn (princ "\n ins = ")(princ ins)))     
            (if ins
             (progn
              (setq ss (vlax-ename->vla-object (car ins)))
              (if (= (vla-get-objectname ss) "AcDbBlockReference")
                  (if (vlax-property-available-p ss 'path)
                      (princ (if IsRus ;LA
                                 "\nВыбрана внешняя ссылка! Повторите выбор."
                                 "\nThis is external reference! Try pick other."))
                      (progn
					             (bg:layer-status-save)
					           ;  (if IsTest (progn (princ "\n1 bg:block-color blocks = ")(princ blocks) (princ "; ss = ")(princ ss)
					           ;                    (princ "; color = ")(princ color) (princ "; lays = ")(princ lays)))
					             (_pl:block-color blocks ss color lays)
				               (if (setq ss nil
                                 ss (ssget "_X" (list (cons 2 (strcat (if (wcmatch(cdr(assoc 2 (entget(car ins)))) "`**")
                                                                            "`"  "" )
                                                                      (cdr(assoc 2 (entget(car ins))))
                                                      )       ) 
                                                      (cons 66 1)
                                                      (cons 410 (getvar "CTAB"))
                           )           )           ) ;setq 
                           (progn
					                  (foreach blk (mapcar (function vlax-ename->vla-object)
					                                       (vl-remove-if (function listp)
							                                    (mapcar (function cadr) (ssnamex ss))))
					                   (foreach at (vlax-invoke blk 'Getattributes)
;;;						(vl-catch-all-apply
;;;            (function vla-put-color)(list at color))
                              (vl-catch-all-apply
                               (function
                                (lambda()
                                 (entmod (append (vl-remove-if '(lambda(x)(member(car x) '(62 420 430)))
                                                              (entget(vlax-vla-object->ename at))
                                                 ) color ) ;append
                                 )
                               )))
                              ) ;foreach
                             ) ;foreach
                       )  ) ;progn if
                       (bg:layer-status-restore)
                       (vla-regen adoc acallviewports)
                   )  ) ;progn if
                  (princ (if IsRus ;LA
                             "\nТип объекта не блок! Повторите выбор."
                             "\nThis isn't block! Try pick other."))
              ) ;if
             ) ;progn
             (princ (if IsRus ;LA
                        "\nНет выбраных объектов! Повторите выбор."
                        "\nNothing selection! Try again."))
            ) ;if ins
         ) ;while
         (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
             (vla-endundomark adoc)
         );LA
        ) ;progn
    ) ;if
    (princ)
) ;defun bg:block-color

(defun bg:put-color ( e color / TrueColor) ;LA работает под Nc, кроме обработки таблиц
  ;;; e - vla-object
  ;;; color - list what return acad_truecolordlg
  (if IsTest (progn (princ "\nbg:put-color 1  e = ")(princ e)(princ "; color = ")(princ color))) 
  (if (equal (vla-get-ObjectName e) "AcDbZombieEntity")
      (princ (if IsRus ;
                 "\nИгнорированы прокси-объекты " "\nSkip proxy entities "))
      (cond
        ((and (= color -1)
              (not(eq (vla-get-color e) acByBlock))
              (not(eq (vla-get-color e) acByLayer))
         )
         (setq TrueColor (vla-get-truecolor e))
         (if IsTest (progn (princ "\nbg:put-color 2  TrueColor = ")(princ TrueColor)))
         (vla-setrgb TrueColor
           (vla-get-red TrueColor)
           (vla-get-green TrueColor)
           (vla-get-blue TrueColor)
         ) ;_ end of vla-setRGB
         (vl-catch-all-apply (function vla-put-Truecolor) (list e TrueColor))
        )
        ((listp color)
         (if IsTest (progn (princ "\nbg:put-color 3  color = ")(princ color)))
         (vl-catch-all-apply
          (function
           (lambda ()
            (entupd (cdr (assoc -1 (entmod (append
              (vl-remove-if '(lambda (x) (member (car x) '(62 420 430)))
                            (entget (vlax-vla-object->ename e))
              ) ;_ end of vl-remove-if
              color
            )       )    )         )       ) ;_ end of cdr ;_ end of entupd
          )) ;_ end of lambda;_ end of function
         ) ;_ end of vl-catch-all-apply
         (vl-catch-all-apply (function vla-update) (list e))
        )
        ((numberp color)
         (vl-catch-all-apply (function vla-put-color) (list e color))
        )
        (t nil)
     ) ;cond
  ) ;if
) ;defun bg:put-color

(defun _pl:block-color (blocks ins color lays / lay layfrz layloc e TrueColor i) ;LA работает под Nc, кроме обработки таблиц
  ;;;color >0 - ACI color
  ;;;      -1 - convert to RGB
  
    (vlax-for e (vla-item blocks (vla-get-name ins)
;;;                  (if (vlax-property-available-p ins 'EffectiveName)
;;;                    (vla-get-effectivename ins)
;;;                    (vla-get-name ins)
;;;                  ) ;_ end of if
                ) ;_ end of vla-item
        (setq lay (vla-item lays (vla-get-layer e)))
        (if (= (vla-get-freeze lay) :vlax-true) ;размораживаем слой
            (progn (setq layfrz (cons lay layfrz)) (vla-put-freeze lay :vlax-false))
        ) ;if
        (if (= (vla-get-lock lay) :vlax-true) ;разблокируем слой
            (progn (setq layloc (cons lay layloc)) (vla-put-lock lay :vlax-false))
        ) ;if
        ;(if IsTest (progn (princ "\n1 _pl:block-color (vla-get-objectname e) = ")(princ (vla-get-objectname e))))
        (bg:put-color e color)
        (if (and (= (vla-get-objectname e) "AcDbBlockReference")
                 (not (vlax-property-available-p e 'path))
            ); and
            (progn ;LA
             ;(if IsTest (progn (princ "\n3 _pl:block-color blocks = ")(princ blocks)))
             (_pl:block-color blocks e color lays)
            ) ;LA 
        ) ;if
        (foreach i layfrz (vla-put-freeze i :vlax-true))
        (foreach i layloc (vla-put-lock i :vlax-true))
    ); vlax-for e
); defun _pl:block-color

;;LA (setq ImgName "..\\..\\Users\\lidia\\AppData\\Roaming\\Nanosoft\\nanoCAD x64 21.0\\Samples\\Чертеж из NormaCS (А4, Закладная).tif")
;;LA (setq ImgName  "Чертеж из NormaCS (А4, Закладная).tif") ;LA не срабатывает под Nc?!
;;LA (setq ImgName "C:\\Lida\\29261_513ru_AddLayOuts (plot)\\513_AddLay\\план трассы победы\\ППН-33 КЭАЗ - 0001.jpg")
;; (bg:DetachImage 3) ;LA изображение удаляется, а контур остается ;
;; (bg:DetachImage ImgName) используется в (bg:delete-from-layer layer-list)
(defun bg:DetachImage (ImgName ) ;удалить вхождение растровой внешней ссылки
  (if IsTest (progn(princ "\nbg:DetachImage ImgName = ")(princ ImgName)))
  (vl-catch-all-apply
   '(lambda () 
     (vla-delete (vla-item (vla-item (vla-get-dictionaries
                                      (vla-get-activedocument (vlax-get-acad-object))) ;_ end of vla-get-dictionaries
                                      "ACAD_IMAGE_DICT" ) ;_ end of vla-Item
                                      ImgName ) ;_ end of vla-Item
     ) ;_ end of vla-Delete
   ) ;_ end of lambda
  ) ;_ end of vl-catch-all-apply
) ;_ end of defun bg:DetachImage

;;;Удаление всего с выключенных и замороженных слоев
;; LA для Nc требуется (bg:delete-from-layer layer-list) , т.к. команда _LAYDEL не работает в бездиалоговом режиме
;; LA для доп.печати (setq IsTest T)
(defun bg:delete-from-layer (layer-list /  ;LA работает, добавила параметр
			      Obj  ;LA	
			      count aDOC
			     *error* all_raster_image_name
			     used_raster_image_name
			     ignore-block-list
			    )
  ;;;Удаление всего с выключенных и замороженных слоев
  (defun *error* (msg)
    (setvar "MODEMACRO" "")
    (princ msg)
    (vla-regen aDOC acactiveviewport) 
    ;(bg:progress-clear) ;LA не работает под Nc
    (princ)
  ) ;_ end of defun
  
  ;LA (setq blk )(_loc-delete-items blk)
  (defun _loc-delete-items (blk / ) ;лок. функция в bg:delete-from-layer ;LA добавила параметр
   (if IsTest(progn (princ "\n2 _loc-delete-items blk = ")(princ blk))) ;LA
   (if(= (vla-get-IsXref Blk) :vlax-false) ;блок не является внешней ссылкой, продолжаем
    (progn
	   (setq count 0)
	   (if (> (vla-get-count Blk) 100)
	    (progn (princ ;  (bg:progress-init ;LA
	     (strcat (vla-get-name Blk) " : "))
	     (princ(vla-get-count Blk))
	    ) ;_ end of bg:progress-init
	   (progn
	    (setvar "MODEMACRO" (vla-get-name Blk))
	  )) ;_ end of progn ;_ end of if
	  
	  (vlax-for Obj Blk
	   (if (and (= (vla-get-ObjectName Obj) "AcDbRasterImage")
		          (vlax-property-available-p obj 'Name)
		          (not (vl-catch-all-error-p (vl-catch-all-apply 'vla-get-name (list obj))))  ;_ end of not
		          (vlax-property-available-p obj 'ImageFile)
	       ) ;_ end of and
	       (setq used_raster_image_name (cons (vla-get-Name Obj) used_raster_image_name)) ;_ end of setq
	   ) ;_ end of if
;;;В таблице описания блока оставляем примитивы на 0 слое в любом случае
	   (if (or (eq (vla-get-IsLayout Blk) :vlax-true)
		         (and (eq (vla-get-IsLayout Blk) :vlax-false)
		              (= (vla-get-ObjectName Blk) "AcDbBlockTableRecord")
		              (/= (vla-get-layer Obj) "0")
		     )   ) ;_ end of and ;_ end of or
	     (vl-catch-all-apply
	      '(lambda ()
		 ;(bg:progress  ;LA для Nc
		      (setq count (1+ count))
		  ;) ;LA для Nc
		      (if (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		       (if (and (vlax-property-available-p Obj 'Layer)
			              (vl-position (vla-get-layer Obj) layer-list)
		           ) ;_ end of and
						  ;ObjectName (RO) = "AcDbBlockReference"
						  ;ObjectName (RO) = "AcDbBlockTableRecord"
		        (if (= (vla-get-ObjectName Obj) "AcDbBlockReference") ;_ end of =
		        	  (if (not (vl-position (vla-get-name Obj) ignore-block-list)) ;_ end of not
			              (vl-catch-all-apply 'vla-delete (list Obj)) ;_ Delete BlockReference object
			          ) ;_ end of if
			          (vl-catch-all-apply 'vla-delete (list Obj)) ;_ Delete OTHER object
		        ) ;_ end of if
		        (vl-catch-all-apply 'bg:del-XDATA-from-ename (list Obj nil)) ;_Delete Appid from Object
		       ) ;_ end of if
		      ) ;_ end of if
	       ) ;_ end of lambda
	     ) ;_ end of vl-catch-all-apply
	   ) ;_ end of if
	  ) ;_ end of vlax-for
	  ;(bg:progress-clear) ;LA для Nc
   ) ;_ end of progn
   ) ;_ end of if
  ) ;_ end of defun _loc-delete-items
  
  
  (setq aDOC (vla-get-activedocument (vlax-get-acad-object)))
  (if IsTest(progn (princ "\n1 bg:delete-from-layer adoc = ")(princ adoc))) ;LA
  ;| ;LA начало комментария. Забила кусок, т.к. добавила параметр layer-list
  (progn
   (setq	layer-list nil
	        aDOC       (vla-get-activedocument (vlax-get-acad-object))
   ) ;_ end of setq
     ;;;  (grtext -1 "Stage 1. Viewing of layers")
   (vlax-for item (vla-get-layers aDOC)
    (if	(or (= (vla-get-freeze item) :vlax-true)
	          (= (vla-get-layeron item) :vlax-false)
	      ) ;_ end of or
      (if (not(wcmatch (vla-get-name item) "*|*")) ;LA слои внешних ссылок
          (setq layer-list (cons (vla-get-name item) layer-list))
      )
    ) ;_ end of if
   ) ;_ end of vlax-for
   (bg:layer-status-save)
   (setq layer-list (vl-remove-if-not 'snvalid layer-list))
   (setq layer-list (vl-remove "0" layer-list))
  )
  |;  ;LA конец комментария 
  
  ;(grtext -1 "Stage 1. Viewing of layers") ;LA временно
  (if layer-list
   (progn
    (setq ignore-block-list nil)
    (vlax-for	Blk (vla-get-Blocks aDOC)
;;;2 цикла: по описаниям блоков и по листам
;;; ignore-block-list - список блоков, имеющих хотя бы один элемент на включенном слое
	   (if (eq (vla-get-IsLayout Blk) :vlax-false) ;_ 1-й цикл по блокам
	    (progn
	     (_loc-delete-items blk) ;LA добавила параметр
	     (setq count nil)
	     (vlax-for Obj Blk
	      (if	(and (/= (vla-get-layer Obj) "0")
		             (not (vl-position (vla-get-layer Obj) layer-list))
		        ) ;_ end of and
		     (progn ;LA
		      (setq ignore-block-list (cons (vla-get-Name Blk) ignore-block-list)) ;_ end of setq
		      ;(if IsTest (progn(princ "\nСписок игнорированых блоков: ")(princ ignore-block-list))) ;LA
		     ) ;LA
	      ) ;_ end of if
	     ) ;_ end of vlax-for
	   ) ;_ end of progn
	  ) ;_ end of if
    ) ;_ end of vlax-for
;;;2 цикла: по описаниям блоков и по листам
    (vlax-for	Blk (vla-get-Blocks aDOC)
;;; ignore-block-list - список блоков, имеющих хотя бы один элемент на включенном слое
	   (if (eq (vla-get-IsLayout Blk) :vlax-true)
	       (_loc-delete-items blk) ;LA добавила параметр
	   ) ;_ end of if
    ) ;_ end of vlax-for
   ) ;_ end of progn
  ) ;_ end of if
;;;  (grtext -1 "Stage 3. Audit and Purge")
  (vla-auditinfo aDOC :vlax-true)
;;;Audit
  (repeat 3 (vla-purgeall aDOC)) ;LA зачем 3 раза?
  (if (and layer-list 
           (setq all_raster_image_name (mapcar 'cdr (vl-remove-if-not 
                                                     (function (lambda (x) (= 3 (car x))))
		                                                 (dictsearch (namedobjdict) "ACAD_IMAGE_DICT")
		  )    )                           )            ) ;_ end of vl-remove-if-not; _ end of mapcar ;_ end of setq     
      (setq all_raster_image_name (mapcar 'strcase all_raster_image_name))
  ) ;_ end of if
  (if IsTest (progn (princ "\n all_raster_image_name = ")(princ all_raster_image_name)))
  (setq used_raster_image_name (mapcar 'strcase used_raster_image_name))
  (if IsTest (progn (princ "\n used_raster_image_name = ")(princ used_raster_image_name)))
  (mapcar
    '(lambda (img)
       (setq all_raster_image_name (vl-remove img all_raster_image_name)) ;_ end of setq ;фильтрация списка для удаления
     ) ;_ end of lambda
    used_raster_image_name
  ) ;_ end of mapcar
  
  (mapcar 'bg:DetachImage all_raster_image_name) ;LA срабатывает под Nc удаление внешней ссылки на растр
;;;  (vl-cmdf "_.Redrawall")
  (vla-regen aDOC acActiveViewport)
  (BG:LAYER-STATUS-RESTORE)
  (setq *BG_LAYER_LST* nil)
) ;_ end of defun  bg:delete-from-layer

(defun bg:conv-to-str (dat) ;LA работает под Nc, в т.ч. 22.0 ; идентично (vva-conv-to-str dat) ;; (bg:conv-to-str 11.333) 
;; (bg:conv-to-str 1232) (bg:conv-to-str 123.562)(bg:conv-to-str T)
  (cond ((= (type dat) 'INT) (setq dat (itoa dat)))
        ((= (type dat) 'REAL)(setq dat (rtos dat 2 12)))
        ((null dat)(setq dat ""))
        (t (setq dat (vl-princ-to-string dat)))
  )
)  

(defun LASTENT ( / E0 EN) ;LA работает под Nc, последний примитив
 ;-----------------------------------------------------
 ; Find True last entity
 ;-----------------------------------------------------
  
      (Setq E0 (EntLast))
      (While (Setq EN (EntNext E0))
         (Setq E0 EN)
      )
      E0
 ) ;defun LASTENT
   ;-----------------------------------------------------
   ; See if a block is explodable. Return T if it is, otherwise return nil
   ;-----------------------------------------------------
 ;; (bg:EXPLODABLE "KIP_CABLE_INST") Если блок можно разбить, то возвращает T, иначе nil
(Defun bg:EXPLODABLE (BNAME / B expld) ;LA работает под Nc, в т.ч. 22.0
      (setq BLOCKS (vla-get-blocks 
                     (vla-get-ActiveDocument (vlax-get-acad-object)))
       )
      
      (vlax-for B BLOCKS (if (and (= :vlax-false (vla-get-islayout B))
                                  (= (strcase (vla-get-name B)) (strcase BNAME))
                                  )
                           (if (vlax-property-available-p B "explodable")  ;;; VVA Correct to 2004 AutoCAD
                             (setq expld (= :vlax-true (vla-get-explodable B)))  
                             (setq expld t)
                             )
                           )
           )
       expld
) ;Defun bg:EXPLODABLE

(defun bg:del-from-list ( pat lst / tmp) ;LA не используется в bgtools
  (foreach item lst
    (if (/= (car item) pat)
      (setq tmp (cons item tmp))
      )
    )
    (reverse tmp)
) ;defun bg:del-from-list
;;;Lee Mac LM:burst
;;LA; (setq IsTest T) (bg:BURST-ONE (car (entsel))) (setq IsTest nil) 
(defun bg:BURST-ONE ( bname / cmd col ent idx lay lin lst obj qaf tmp lw ) ;LA исправила, работает под Nc 21.0, 22.0
  ;;;2018-04-13 Program modified to retain visible constant attributes.
  ;;Программа изменена для сохранения видимых постоянных атрибутов.
    (if (= 'ename (type bname))
        (progn
            (setq obj (vlax-ename->vla-object bname)
                  lay (vla-get-layer obj)
                  col (vla-get-color obj)
                  lin (vla-get-linetype obj)
                  lw  (vla-get-LineWeight obj)
            )
            (if IsTest (progn (princ "\n1 bg:BURST-ONE obj = ")(princ obj))) ;LA
            (if (and (= "AcDbBlockReference" (vla-get-objectname obj))
                     (vlax-write-enabled-p obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                     (or (and (LM:usblock-p obj) ;объект-блок с одинаковым масштабом?
                              (not (vl-catch-all-error-p (setq lst (vl-catch-all-apply 'vlax-invoke (list obj 'explode)))))
                         )
                         (progn
                             (setq tmp (vla-copy obj)
                                   ent (LASTENT);_(LM:entlast)
                                   cmd (getvar 'cmdecho)
                                   qaf (getvar 'qaflags)
                             )
                             (setvar 'cmdecho 0)
                             (setvar 'qaflags 0)
                             (vl-cmdf "_.explode" (vlax-vla-object->ename tmp))
                             (setvar 'qaflags qaf)
                             (setvar 'cmdecho cmd)
                             (while (setq ent (entnext ent))
                                 (setq lst (cons (vlax-ename->vla-object ent) lst))
                             )
                             (if IsTest (progn (princ "\n2 bg:BURST-ONE lst = ")(princ lst))) ;LA
                             lst
                         ) ;progn
                     ) ;or
                ) ;and
                (progn
                    (if IsTest (progn (princ "\n3 bg:BURST-ONE obj = ")(princ obj))) ;LA
                    (foreach att (vlax-invoke obj 'getattributes)
                        (if IsTest (progn (princ "\n4 bg:BURST-ONE att = ")(princ att))) ;LA
                        (if (vlax-write-enabled-p att) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                            (progn
                              (if IsTest (progn (princ "; 4.1 bg:BURST-ONE ") )) ;LA
                              (if (= "0" (vla-get-layer att))
                                  (vla-put-layer att lay)
                              )
                              (if (= acbyblock (vla-get-color att))
                                  (vla-put-color att col)
                              )
                              (if (= "byblock" (strcase (vla-get-linetype att) t))
                                  (vla-put-linetype att lin)
                              )
                              (if (= acLnWtByBlock (vla-get-lineweight att))
                                  (vla-put-lineweight att lw)
                              )
                            ) ;progn
                        ) ;if
                        (if (= :vlax-false (vla-get-invisible att))
                            (progn 
                             (if IsTest (progn (princ "\; 4.2 bg:BURST-ONE ") )) ;LA
                             (if (and (vlax-property-available-p att 'mtextattribute)
                                      (= :vlax-true (vla-get-mtextattribute att)))
                                 (LM:burst:matt2mtext att) ;  LM:burst:matt2mtext   ;LA
                                 (LM:burst:att2text  att) ;  LM:burst:att2text     ;LA 
                             ) ;if
                             (entget (vlax-vla-object->ename att))
                            ) ;progn
                        ) ;if
                    ) ;foreach
                    (foreach new lst
                      (if IsTest (progn (princ "\n5 bg:BURST-ONE new = ")(princ new))) ;LA
                         (if (vlax-write-enabled-p new) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                            (progn
                              (if IsTest (progn (princ "; 5.1 bg:BURST-ONE "))) ;LA
                                (if (= "0" (vla-get-layer new))
                                    (vla-put-layer new lay)
                                )
                                (if (= acbyblock (vla-get-color new))
                                    (vla-put-color new col)
                                )
                                (if (= "byblock" (strcase (vla-get-linetype new) t))
                                    (vla-put-linetype new lin)
                                )
                                (if (= acLnWtByBlock (vla-get-lineweight new))
                                        (vla-put-lineweight new lw)
                                    )
                                (if (= "AcDbAttributeDefinition" (vla-get-objectname new))
                                    (progn
                                     (if IsTest (progn (princ "5.2 bg:BURST-ONE ")))
                                     (if (and (= :vlax-true (vla-get-constant new)) (= :vlax-false (vla-get-invisible new)))
                                         (progn (if (and (vlax-property-available-p new 'mtextattribute)
                                                         (= :vlax-true (vla-get-mtextattribute new)))
                                                    (LM:burst:matt2mtext new) ; LM:burst:matt2mtext   ;LA
                                                    (LM:burst:att2text new)    ; LM:burst:att2text    ;LA 
                                                )
                                                (entget (vlax-vla-object->ename new))
                                          ) ;progn
                                     ) ;if
                                     (vla-delete new)
                                    ) ;progn
                                ) ;if
                            ) ;progn
                        ) ;if                      
                    ) ;foreach
                    (vla-delete obj)
                ) ;progn
            ) ;if
        ) ;progn
    ) ;if
    (princ)
) ;defun bg:BURST-ONE

(defun LM:burst:removepairs ( itm lst / x)  ;LA работает под Nc 21.0, 22.0 ; используется в bg:BURST-ONE
    (vl-remove-if '(lambda ( x ) (member (car x) itm)) lst)
) ;defun LM:burst:removepairs

(defun LM:burst:remove1stpairs ( itm lst / x)  ;LA работает под Nc 21.0, 22.0 ; используется в bg:BURST-ONE
    (vl-remove-if '(lambda ( x ) (if (member (car x) itm) (progn (setq itm (vl-remove (car x) itm)) t))) lst)
) ;defun LM:burst:remove1stpairs
(defun LM:burst:att2text   ( enx ) ;LA работает под Nc 21.0, 22.0 ; используется в bg:BURST-ONE
  (setq enx (entget(vlax-vla-object->ename enx))) ;LA добавила
  (if IsTest (progn (princ "\n LM:burst:att2text ")(princ enx))) ;LA
  (entmakex 
        (append '((0 . "TEXT"))
            (LM:burst:removepairs '(000 002 003 070 074 100 280)
                (subst (cons 73 (cdr (assoc 74 enx))) (assoc 74 enx) enx)
            )
        )
    )
) ;defun LM:burst:att2text
(defun LM:burst:matt2mtext ( enx ) ;LA работает под Nc 21.0, 22.0 ; используется в bg:BURST-ONE
    (setq enx (entget(vlax-vla-object->ename enx))) ;LA добавила
    (if IsTest (progn (princ "\n LM:burst:matt2mtext ")(princ enx))) ;LA
    (entmakex
        (append '((0 . "MTEXT") (100 . "AcDbEntity") (100 . "AcDbMText"))
            (LM:burst:remove1stpairs  '(001 007 010 011 040 041 050 071 072 073 210)
                (LM:burst:removepairs '(000 002 042 043 051 070 074 100 101 102 280 330 360) enx)
            )
        )
    )
) ;defun LM:burst:matt2mtext

;; Uniformly Scaled Block  -  Lee Mac
;; Returns T if the supplied VLA Block Reference is uniformly scaled
;; obj - [vla] VLA Block Reference
;;(setq IsTest T) (LM:usblock-p (setq obj (vlax-ename->vla-object (car (entsel))))) (setq IsTest nil) 
(defun LM:usblock-p ( obj / s )  ;LA работает под Nc 21.0, 22.0 используется в bg:BURST-ONE
    (if (vlax-property-available-p obj 'xeffectivescalefactor)
        (setq s "effectivescalefactor")
        (setq s "scalefactor")
    ) ;if
    (eval
        (list 'defun 'LM:usblock-p '( obj )
            (list 'and
                (list 'equal
                    (list 'abs (list 'vlax-get-property 'obj (strcat "x" s)))
                    (list 'abs (list 'vlax-get-property 'obj (strcat "y" s)))
                    1e-8  ;LA ошибка: неверный тип аргумента: listp: 256

                )
                (list 'equal
                    (list 'abs (list 'vlax-get-property 'obj (strcat "x" s)))
                    (list 'abs (list 'vlax-get-property 'obj (strcat "z" s)))
                    1e-8
                )
            )
        )
    ) ;eval
    (LM:usblock-p obj)
) ;defun LM:usblock-p

 ;| ;LA удалено 16-09-2021г.
;;; VVA 2018-01-03 Comment Begin
;;; VVA 2018-01-03 Comment End
 |; ;LA удалено 16-09-2021г.

(defun bg:change-prop ( obj prop value) ;LA не используется в bgtools 3.xx.lsp
  (if (= (type obj) 'ENAME)
      (setq obj (vlax-ename->vla-object obj))
  )
  (if (and(vlax-write-enabled-p obj) 
          (vlax-property-available-p obj prop)
      )
      (vl-catch-all-apply 'vlax-put-property (list obj prop value))
  )
) ;defun bg:change-prop
(progn ;LA ссылки
;;; Список вложенных блоков вложеные блоки nested block
;;; list of nested block
;;; http://www.cadtutor.net/forum/showthread.php?t=48702
;;; http://www.theswamp.org/index.php?topic=40367.0
;;; см.BlockCount V1-2.lsp Lee MAc
; ...
;;http://forum.dwg.ru/showthread.php?t=8346 ( И опять VLA-SELECT )
;;http://forums.augi.com/showthread.php?p=738077#post738077
) ;progn LA
;_Взрывает блок BURST'ом и возвращает список полученных объектов VLA
;;LA; (setq IsTest T) (bg:burst-list (car (entsel))) (setq IsTest nil) 
(defun bg:burst-list (blk / ret ELAST ENAME ENT) ;LA работает под Nc 21.0, 22.0
  (if (= (type blk) 'VLA-OBJECT)(setq blk (vlax-vla-object->ename blk)))
  (Setq ELAST (LASTENT))
  (bg:BURST-ONE blk)
  (setq ENAME ELAST ret nil)
  (While (Setq ENAME (EntNext ENAME))
    (setq ENT (entget ENAME))
    (if
      (and (assoc 60 ENT);_(check Visible dxf code 60) if code 60 set to 1 - object invisible
            (= 1 (cdr(assoc 60 ENT)))
           )
         (VL-CATCH-ALL-APPLY 'entdel (list ENAME))
      (setq ret (cons (vlax-ename->vla-object ENAME) ret))
       )
    )
  ret
);defun bg:burst-list


 ;| ;LA исправила. Пример использования bg:explode-block - все примитивы взорванного блока делаются красным
  (defun c:TEST_bg:explode-block ( / blk blk_obj e1 ss) 
   (setq blk (car(entsel "\nУкажите блок: ")))
   (setq e1 (entlast))
   (bg:explode-block blk t) ;LA работает под Nc 21.0, 22.0
   (setq e1 (entnext e1))
   (setq ss (ssadd)) 
   (while e1
    (ssadd e1 ss)                      ; Returns selection set ss with e1 added.
    (setq e1 (entnext e1))             ; Gets entity following e1.
   )  
   (princ "\nОбразовалось объектов из взорванного блока: ") (princ (sslength ss))
   (command "_CHANGE" ss "" "_PR" "_Color" 1 "") ;LA не работает "_P" под Nc 21.0, надо _PR, тогда цвет меняется на красный
   (princ))
 |;
(defun bg:explode-block ( blk level / adoc csp blk_obj delname) ;LA работает под Nc 21.0, 22.0
;_Цикл по примитивам блока
;_Необходим, чтобы взорвать вложенные блоки
;_ blk - Ename блока
;;; level - t all level nil -one level
 (if (and (vlax-write-enabled-p (setq blk_obj  ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
            (if (= (type blk) 'ENAME)(vlax-ename->vla-object blk) blk)))
          (not (vlax-property-available-p blk_obj 'Path)) ;_not a Xref
     ) ;and
  (progn
   (if(and (vlax-property-available-p blk_obj 'isdynamicblock)
	          (= (vla-get-isdynamicblock blk_obj) :vlax-true)
	    ) ;and
      (progn
       (bg:DynToStatic blk_obj nil) ;_VVA 2015-06-15
       ;;;(setq blk (entlast))      ;_VVA 2015-06-15
       (setq blk (vlax-vla-object->ename blk_obj)) ;_VVA 2015-06-15
;;;       (setq delname (cdr(assoc 2 (entget blk))))
    )  )
    (foreach memb (bg:burst-list Blk)
     (cond
      ((and level(= (vla-get-ObjectName memb) "AcDbBlockReference"))
       (bg:explode-block (vlax-vla-object->ename memb) level )
      );_BURST блокам
	    (t  nil)
    )) ;cond foreach  
  )) ;progn if  
 ) ;defun bg:explode-block
 
;;published by kpblc (ссылки не работают)
;;http://www.arcada.com.ua/forum/viewtopic.php?t=526
;;modyfied and published by VVA
;;http://www.cadtutor.net/forum/showthread.php?t=13295
;|=============================================================================
; *  Функция "нормализации" блоков активного файла. В зависимости от ответа на
; * вопрос к типу ByBlock приводится либо тип линии, либо вес линии, либо цвет,
; * либо все вместе (при пустом ответе, т.е. по умолчанию).
; * Обрабатываются все блоки, без исключения. Не обрабатываются внешние ссылки
=============================================================================|;
(defun C:BGBLFIX ( / lst) ;LA работает под Nc 22.0 14.07.2022
;;;; (if (zerop (getvar "PSTYLEMODE"))(vla-put-PlotStyleName obj "ByBlock"))
;;;; CONVERTPSTYLES
  (if (eq (getvar "BLOCKEDITOR") 1)
    (if	IsRus ;LA
      (bg:msg-Popup "Внимание!" "Необходимо выйти из редактора блока!" 16)
      (bg:msg-Popup	"Attention!"	"You must exit the Block Editor!"	   16)
    ) ;if
    (progn
      (if (setq lst (bg:blfixdialog)) ;LA работает
	        (bg:blfix lst) ;LA работает под Nc 22.0
      ) ;if
    )
  ) ;if
  (princ)
) ;defun C:BGBLFIX
;===============================================
;(setq IsTest nil)
(defun C:BGLAYDEL ( )(BGLAYDEL nil)) ;LA работает под Nc 21.0
(defun BGLAYDEL ( ask / mdm layer-list aDOC item lay) ;LA работает под Nc 21.0 22.0, (bg:delete-from-layer) - работает
  ;;;ask - nil запрос t - удаление
  ;;;Удаление выключенных и замороженных слоев с примитивами
  (if (or ask 
         (bg:msg-yes-no ;LA 30.07.2022
          (if	IsRus "Внимание" "Attension") ;LA
          (if	IsRus "Вы действительно хотите удалить \nвыключенные и замороженные слои\n и объекты на них?"
                    "You really want to remove \nfrozen and off layers and objects on it?")
         ) ;bg:msg-yes-no
      );or
      (progn
       (command "_.UNDO" "_Mark")(command)
       (setvar "CLAYER" (cdr(assoc 2 (entmod (subst(cons 70 (boole 2(cdr (assoc 70 (entget (tblobjname "layer" "0")))) 1)) ;_ end of cons
                                                   (assoc 70(entget (tblobjname "layer" "0")))
                                                   (entget (tblobjname "layer" "0"))
       )                )   )        )       ) ;_ end of subst ;_ end of entmod ;_ end of assoc ;_ end of cdr ;_ end of setvar
       (command "_REGENALL") ;LA под Nc не применяется слой 0 без регенерации
       (setq mdm (getvar "MODEMACRO"))
       (while (> (getvar "CMDACTIVE") 0) (command)) ;LA 
       ;;; (if (null (getcname "_LAYDEL"))(progn(vl-cmdf "_.-LAYDEL")(command))) ;_2019-11-20 Remove VVA
       ;LA перенесла создание списка слоев вверх (начало)
       (setq layer-list nil
             aDOC (vla-get-activedocument (vlax-get-acad-object))) ;_ end of setq
       (vlax-for item (vla-get-layers aDOC)
          (if (or (= (vla-get-freeze  item) :vlax-true )
                  (= (vla-get-layeron item) :vlax-false)
              ) ;_ end of or
              (if (not(wcmatch (vla-get-name item) "*|*"))
                  (setq layer-list (cons (vla-get-name item) layer-list)))
          ) ;_ end of if
       ) ;_ end of vlax-for
       (setq layer-list (vl-remove-if-not 'snvalid layer-list))
       (setq layer-list (vl-remove "0" layer-list))
       (setq layer-list (vl-remove "Defpoints" layer-list))
       ;LA перенесла создание списка слоев вверх (конец)
       (if(and(not(vl-string-search "nano" (vlax-product-key)))   ;LA
              (getcname "_LAYDEL")
              layer-list
          ) ;LA
          (progn
           (vl-catch-all-apply
             '(lambda()
                (mapcar
                 '(lambda(Lay) (vla-put-lock (vla-item (vla-get-layers aDOC) Lay) :vlax-false))
                 layer-list)
                (vl-cmdf "_LAYDEL") ;LA было "_.-LAYDEL"
                (foreach lay layer-list
                  (vl-cmdf "_Name" lay) ;LA под Nc "_Name" не работает в бездиалоговом режиме
                )
                (vl-cmdf "" "_Yes")
                (command)
               ; (command "_REGENALL") ;LA дабавила, если заработает без диалога
              )
            ) ;vl-catch-all-apply
           (princ)
         ) ;progn
          (progn ;LA
           (if IsTest(progn(princ "\n layer-list = ")(princ layer-list)))
           (bg:delete-from-layer layer-list) ;LA добавила параметр
          ) ;LA
       ) ;if
       (setvar "MODEMACRO" mdm)
       (command "_.Regenall")
       (if IsRus ;LA
        (princ "\n*** Команда _UNDO(ОТМЕНИТЬ) _Back(Обратно) восстановит Ваши слои")
        (princ "\n*** Command _.UNDO _Back restore your layers")
       )
       (princ)
     );progn
  );if
  (princ)
) ;defun BGLAYDEL
;====================================================
;;;BG Color ATTribute
(defun C:BGCATT ( / ss i obj color *error* adoc) ;LA работает под Nc 21.0, 22.0 для однострочных атрибутов
   (defun *error* (msg)
     (setvar "NOMUTT" 0)
     (princ msg)
     (bg:layer-status-restore)
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
       (vla-endundomark adoc)
     ) ;LA
    (princ)
  ) ;defun *error*
  (setq adoc  (vla-get-activedocument (vlax-get-acad-object))
         i    '-1)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark adoc)
  ) ;LA
  (if(and(setq color (la:color *BG-COLOR*)  ;LA вынесла в отдельную функцию
               *BG-COLOR*  color         ) ;setq
         (setvar "NOMUTT" 1)
         (if IsRus ;LA
             (princ "\nВыберите блоки с атрибутами <все>:")
             (princ "\nSelect Block with Attribute <all>:")
         )
         (or (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                    (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
                 (setq ss (ssget "_:L" '((0 . "INSERT")(66 . 1))))
                 (setq ss (ssget '((0 . "INSERT")(66 . 1)))));LA
             (not (setvar "NOMUTT" 0))
             (setq ss (ssget "_X" (list '(0 . "INSERT")'(66 . 1)(cons 410 (getvar "CTAB")))))
         ) ;or
         (setvar "NOMUTT" 0)
    ) ;and
    (progn
      (bg:layer-status-save)
      (repeat (sslength ss)
        (setq Obj (vlax-ename->vla-object(ssname ss (setq i (1+ i)))))
        (if (and (= (vla-get-objectname Obj) "AcDbBlockReference")
                 (not (vlax-property-available-p Obj 'path))
                   )
            (foreach att (vlax-invoke Obj 'getattributes)
              ;;; (vla-put-color att Color) ;;;ZZZ1
              (bg:put-color att color) ;LA не срабатывает для многострочных атрибутов под Nc 22.0
            ) ;_ end of foreach
          )
	    )
      (setvar "NOMUTT" 0)
      (bg:layer-status-restore)
      )
    )
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
       (vla-endundomark adoc)
  ) ;LA
  (princ)
) ;defun C:BGCATT

(defun C:BGCBL2 (/ ss i obj color *error* adoc blocks) ;LA работает под Nc 21.0 кроме таблиц и атрибутов в блоках 2-го уровня
  (defun *error* (msg)
    (setvar "NOMUTT" 0)
    (princ msg)
    (bg:layer-status-restore)
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-endundomark adoc)
    );LA
    (princ)
  ) ;_ end of defun

  (setq adoc  (vla-get-activedocument (vlax-get-acad-object))
      blocks (vla-get-blocks adoc)
        i   '-1)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark adoc)
  ) ;LA
  (if
    (and (setq  color     (la:color *BG-COLOR*)     ;LA вынесла в отдельную функцию
                 *BG-COLOR*  color     ) ;setq
         ;;;(setq color '-1)
         (setvar "NOMUTT" 1)
         (if IsRus ;LA
           (princ "\nВыберите блоки <все>:")
           (princ "\nSelect Block <all>:")
         ) ;_ end of if
         (or (setq ss (ssget "_:L" '((0 . "INSERT"))))
             (not (setvar "NOMUTT" 0))
             (setq ss (ssget "_X" (list '(0 . "INSERT") (cons 410 (getvar "CTAB")))))  ;_ end of ssget;_ end of setq
         ) ;_ end of or
         (setvar "NOMUTT" 0)
    ) ;_ end of and
    (progn
       (bg:layer-status-save)
       (repeat (sslength ss)
         (setq Obj (vlax-ename->vla-object (ssname ss (setq i (1+ i)))))
         (if (and (= (vla-get-objectname Obj) "AcDbBlockReference")
                  (not (vlax-property-available-p Obj 'path))
             ) ;_ end of and
           (vlax-for e (vla-item blocks (vla-get-name Obj))
             (if (and (= (vla-get-objectname e) "AcDbBlockReference")
                      (not (vlax-property-available-p e 'path))
                 ) ;_ end of and
               (progn
               (_pl:block-color blocks e color (vla-get-layers adoc))
               (entmod
                 (append
                   (vl-remove-if '(lambda(x)(member(car x) '(62 420 430)))
                     (entget(vlax-vla-object->ename e))
                     )
                   color
                   )
                 )
               )
             ) ;_ end of if
           ) ;_ end of vlax-for
         ) ;_ end of if
       ) ;_ end of repeat
       (setvar "NOMUTT" 0)
       (bg:layer-status-restore)
    ) ;_ end of progn
  ) ;_ end of if
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
       (vla-endundomark adoc)
  ) ;LA
  (vla-regen adoc acallviewports)
  (princ)
) ;_ end of defun C:BGCBL2
;============================================
;;; Взрывает блоки, состоящие из одного примитива (возможно другого блока).
; LA - взрывает только блок из блока, но не рекурсивно!!! 
(defun C:BG1BLEXP ( / count xcount) ;LA работает под Nc 21.0
  (setq count (bg:block-explode-one-item)
	             xcount (cadr count)
	             count (car count)
	)
  (if	IsRus ;LA
   (progn ;LA
    (princ "\nРазбито ")(princ count)(princ " блоков с одним элементом блоком. ")
    (princ "\nНайдено ")(princ xcount)(princ " подрезанных блоков.")
   )
   (progn ;LA
    (princ "\nExploded ")(princ count)(princ " blocks with one element. ")
    (princ "\nFound ") v(princ xcount)(princ " blocks has xclip boundary.")
  )) ;LA
  (princ)
 );defun C:BG1BLEXP
 ;=============================================
;;Показыавет подрезанные блоки
(defun C:BGBLXCLIP ( / ss xss i blk) ;LA работает под Nc 21.0, 22.0
  (setq i '-1 xss (ssadd))
  (if (setq ss (ssget "_X" (list '(0 . "INSERT")(cons 410 (getvar "CTAB")))))
    (progn
      (repeat (sslength ss)
	     (if (bg:block-GetXclip (vlax-ename->vla-object(setq blk (ssname ss (setq i (1+ i))))))
	         (ssadd blk xss)
	     )
	    )
      (sssetfirst nil xss)
    )
  )
  (if	IsRus ;LA
   (progn ;LA
    (princ "\nНайдено ")(princ (sslength xss)) (princ " подрезанных блоков.")
   ) ;LA
   (progn ;LA
    (princ "\nFound ") (princ (sslength xss)) (princ " blocks has xclip boundary.")
  )) ;LA
  (setq ss nil xss nil)
  (princ)
) ;defun C:BGBLXCLIP

;;;Взрывает блоки 1-го уровня, у которых нет видимых атрибутов
(defun C:BGBLEXP1NOATT ( / i ss blk count xcount tmp *error*) ;LA работает под Nc
  (defun *error* (msg)
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-EndUndoMark (vla-get-activedocument (vlax-get-acad-object)))
    ) ;LA
    (setvar "MODEMACRO" "")
    (princ msg)
    (vla-regen (vla-get-activedocument (vlax-get-acad-object)) acactiveviewport)
    ;(bg:progress-clear) ;LA для Nc
    (princ)
  ) ;_ end of defun

  (setq i '-1 count 0 xcount 0)
  (setq ss (ssget "_I" (list '(0 . "INSERT")(cons 410 (getvar "CTAB"))))) ;LA ;'(66 . 0) ;66 - Флаг "следования объектов" (фиксированный)
  (SSSETFIRST)
  (command "_.UNDO" "_Mark")
  (if (or ss
          (setq ss (ssget "_:L" (list '(0 . "INSERT")(cons 410 (getvar "CTAB"))))) ;LA '(66 . 0) ;LA может отсутствовать код 66, 410 - любое значение подходит
      )
    ;(setq ss (ssget "_:L" (list '(0 . "INSERT")'(66 . 0)(cons 410 (getvar "CTAB")))))  
    (progn
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
         (vla-StartUndoMark (vla-get-activedocument (vlax-get-acad-object)))
     );LA
     (if (sslength ss) ;LA добавила
      (progn ;LA
       (if (> (sslength ss) 50)
	        ;(bg:progress-init (strcat "Working ...") (sslength ss)) ;_ end of bg:progress-init ;LA
	        (progn  ;LA для Nc
	         (princ (if IsRus ;LA
	          "Разбиение блоков ..." "Working ..."))
	         (princ (sslength ss))) ;LA для Nc
		   ) ;_ end of if
		  
       (repeat (sslength ss)
        (setq blk (ssname ss (setq i (1+ i)))) ;LA вынесла выше из if
        ;(setq blk (ssname ss 0))   
      	(if (or (and (setq tmp (bg:block-GetXclip (vlax-ename->vla-object blk))) ;подрезка есть?
		             (= 1 (cdr(assoc 71 tmp)))
		            )
		            (equal (assoc 66 (entget blk)) '(66 . 1)) ;LA добавила проверку на наличие атрибутов
		        )
	          (setq xcount (1+ xcount)) ;пропускаем подрезаные блоки
	          (progn
	        
            ;(bg:progress ;LA для Nc
             (setq count (1+ count))
             ;) ;LA для Nc
	           (bg:explode-block blk nil)
	      )  )
    	 ) ;repeat
      ;(bg:progress-clear)  ;LA для Nc
      )); progn if ;LA добавила
      (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
             (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
          (vla-EndUndoMark (vla-get-activedocument (vlax-get-acad-object)))
      );LA
    )
  ) ;if 
  (if	IsRus ;LA
   (progn ;LA
    (princ "\nРазбито ")(princ count)(princ " блоков без видимых атрибутов. ")
    (princ "\nНайдено ")(princ xcount)(princ " с атрибутами/подрезанных блоков.")
    (if(not(zerop count))(princ "\n*** Команда _UNDO(ОТМЕНИТЬ) _Back(Обратно) восстановит Ваш чертеж"))
   )
   (progn ;LA
    (princ "\nExploded ") (princ count ) (princ " blocks.")
    (princ "\nFound "   ) (princ xcount) (princ " blocks has xclip boundary.")
    (if(not(zerop count))(princ "\n*** Command _.UNDO _Back restore your drawing"))
   )) ;LA
  (princ)
);defun C:BGBLEXP1NOATT

(defun C:BGBLDYNEXP1 (  / i ss blk count xcount tmp *error*)  ;LA работает под Nc
  (defun *error* (msg)
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-EndUndoMark (vla-get-activedocument (vlax-get-acad-object)))
    ) ;LA
    (setvar "MODEMACRO" "")
    (princ msg)
    (vla-regen (vla-get-activedocument (vlax-get-acad-object)) acactiveviewport)
    ;(bg:progress-clear)  ;LA для Nc
    (princ)
  ) ;_ end of defun
  (setq count 0 xcount 0)
  (setq ss (ssget "_I" (list '(0 . "INSERT")(cons 410 (getvar "CTAB")))))
  (SSSETFIRST ss)
  (command "_.UNDO" "_Mark")
  (if (or ss (setq ss (ssget "_:L" (list '(0 . "INSERT")(cons 410 (getvar "CTAB"))))))
   (progn
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-StartUndoMark (vla-get-activedocument (vlax-get-acad-object)))
    ) ;LA
    (if (sslength ss) ;LA добавила
     (progn
      (if (> (sslength ss) 50)
	   ;(bg:progress-init (strcat "Working ...") (sslength ss)) ;_ end of bg:progress-init ;LA 
	     (progn ;LA
	      (princ (if IsRus ;LA
	       "Разбиение блоков ..." "Working ..."))
	      (princ (sslength ss))) ;LA для Nc
	    ) ;_ end of if
      (repeat (setq i (sslength ss))
	     (if (and (setq tmp(bg:block-GetXclip (vlax-ename->vla-object(setq blk (ssname ss (setq i (1- i)))))))
		            (= 1 (cdr(assoc 71 tmp)))
		       )
	         (setq xcount (1+ xcount))
	         (progn
            ;(bg:progress (setq count (1+ count))) ;LA
            (setq count (1+ count)) ;LA
            (if (eq (vla-get-IsDynamicBlock (vlax-ename->vla-object blk)) :vlax-true)
              (bg:explode-block blk nil)
            )
	         )
	      );if
	    )repeat
      ;(bg:progress-clear) ;LA
    )) ;progn if
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-EndUndoMark (vla-get-activedocument (vlax-get-acad-object)))
    );LA
   )
  ) ;if
   (if IsRus ;LA
   (progn ;LA
    (princ "\nРазбито ")(princ count)(princ " блоков. ")
    (princ "\nНайдено ")(princ xcount)(princ " подрезанных блоков.")
    (if(not(zerop count))(princ "\n*** Команда _UNDO(ОТМЕНИТЬ) _Back(Обратно) восстановит Ваш чертеж"))
   )
   (progn ;LA
    (princ "\nTry to explode ") (princ count)(princ " blocks. ")
    (princ "\nFound ") (princ xcount) (princ " blocks has xclip boundary.")
    (if(not(zerop count))(princ "\n*** Command _.UNDO _Back restore your drawing"))
  )) ;LA
  (princ)
);defun C:BGBLDYNEXP1
;;;Взрывает блоки 1-го уровня, превращая видимые атрибуты в текст
(defun C:BGBLEXP1 ( / ret) ;LA работает под Nc 21.0, 22.0
  (setq ret (BGBLEXP nil))
  (if	IsRus ;LA
   (progn ;LA
    (princ "\nРазбито ")(princ (car ret))(princ " блоков. ")
    (princ "\nНайдено ")(princ (cadr ret))(princ " подрезанных блоков.")
    (if(not(zerop (car ret)))(princ "\n*** Команда _UNDO(ОТМЕНИТЬ) _Back(Обратно) восстановит Ваш чертеж"))
   )
   (progn ;LA
    (princ "\nTry to explode ")(princ (car ret))(princ " blocks. ")
    (princ "\nFound ") (princ (cadr ret)) (princ " blocks has xclip boundary.")
    (if(not(zerop (car ret)))(princ "\n*** Command _.UNDO _Back restore your drawing"))
  )) ;LA
  (princ)
) ;defun C:BGBLEXP1

;;;Взрывает блок и все блоки, входящие в него, превращая видимые атрибуты в текст
(defun C:BGBLEXP ( / ret ) ;LA работает под Nc 21.0, 22.0
  (setq ret(BGBLEXP t))
   (if	IsRus ;LA
   (progn ;LA
    (princ "\nРазбито ")(princ (car ret))(princ " блоков. ")
    (princ "\nНайдено ")(princ (cadr ret))(princ " подрезанных блоков.")
    (if(not(zerop (car ret)))(princ "\n*** Команда _UNDO(ОТМЕНИТЬ) _Back(Обратно) восстановит Ваш чертеж"))
   )
   (progn ;LA
    (princ "\nTry to explode ")(princ (car ret)) (princ " blocks. ")
    (princ "\nFound ") (princ (cadr ret)) (princ " blocks has xclip boundary.")
    (if(not(zerop (car ret)))(princ "\n*** Command _.UNDO _Back restore your drawing"))
  )) ;LA
  (princ)
);defun C:BGBLEXP

(defun BGBLEXP ( level / i ss blk count xcount tmp *error*) ;;LA работает под Nc (доп. проверить геом. зависимости)
  ;;; t - all nil - one
    (defun *error* (msg)
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
         (vla-EndUndoMark (vla-get-activedocument (vlax-get-acad-object)))
    ) ;LA
    (setvar "MODEMACRO" "")
    (princ msg)
    (vla-regen (vla-get-activedocument (vlax-get-acad-object)) acactiveviewport)
    ;(bg:progress-clear) ;LA
    (princ)
  ) ;_ end of defun
;;;Add VVA 2018-06-22 BEGIN ;LA 30.07.2022 Begin
  (if(and (dictsearch (namedobjdict) "acad_assocnetwork")
          (bg:msg-yes-no (if IsRus "Внимание" "Attention"	)
              	         (if IsRus "Обнаружены геометрические зависимости!\nУдалить?" ;LA
              	                   "Geometric constraints was found!\nDelete them?" ) ;LA
     )    )
     (bg:del-constraint) ;доп. проверить
  )
;;;Add VVA 2018-06-22 END ;LA 30.07.2022 End

  (setq count 0 xcount 0)
  (setq ss (ssget "_I" (list '(0 . "INSERT")(cons 410 (getvar "CTAB")))))
  (SSSETFIRST ss)
  (command "_.UNDO" "_Mark")
  (if (or ss (setq ss (ssget "_:L" (list '(0 . "INSERT")(cons 410 (getvar "CTAB"))))))
    (progn
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
         (vla-StartUndoMark (vla-get-activedocument (vlax-get-acad-object)))
      ) ;LA
      (if (> (sslength ss) 50)
	    ;(bg:progress-init (strcat "Working ...") (sslength ss)) ;_ end of bg:progress-init ;LA 
	     (progn ;LA
	      (princ (if IsRus ;LA
	       "Разбиение блоков ..." "Working ..."))
	      (princ (sslength ss))) ;LA для Nc	   
	    ) ;_ end of if
      (repeat (setq i (sslength ss))
	(if (and (setq tmp(bg:block-GetXclip (vlax-ename->vla-object(setq blk (ssname ss (setq i (1- i)))))))
		 (= 1 (cdr(assoc 71 tmp)))
		 )
	  (setq xcount (1+ xcount))
	  (progn
            ;(bg:progress ;LA
             (setq count (1+ count))
             ;) ;LA
	    (bg:explode-block blk level)
	    )
	  )
	)
     ; (bg:progress-clear) ;LA
     (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
            (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
         (vla-EndUndoMark (vla-get-activedocument (vlax-get-acad-object)))
      ) ;LA
     )
    )
  (list count xcount)
  ) ;defun BGBLEXP
;; BGCFTSEL - конвертирует поле в текст в выбранных объектах
;; LA Под Nc 21.0 не работает с Мультивыносками AutoCAD, проверено NC(x64)22.0(5997.3741.6106)_mega - работает.
;; LA работает с TEXT, MTEXT, атрибутами блоков 1-го уровня выносками Nc
(defun C:BGCFTSEL( / *error* Doc ss CountField ;LA Nc 22.0 - работает
                    obj ) ;LA
  ;;; http://forum.dwg.ru/showthread.php?t=20190&page=2
   (vl-load-com)  
  (defun *error* (msg)
   (princ msg)
   (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
          (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
       (vla-endundomark doc)
   ) ;LA
   (princ)
  ) ;defun *error*
  (setq Doc (vla-get-activedocument (vlax-get-acad-object)))
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark Doc)
  ) ;LA
  (if (setq ss (ssget "_:L"))
   (progn
     (setq CountField 0)
     (foreach obj
      (mapcar (function vlax-ename->vla-object)
	      (vl-remove-if (function listp)
		      (mapcar (function cadr) (ssnamex ss))
		  ) )
      (setq CountField (ClearFieldInThisObject Doc Obj CountField))
     )
     (if	IsRus ;LA
      (progn
       (princ "\nКонвертируем поля в ")(princ CountField) (princ " текстах "))
      (progn
       (princ "\nConverting Field in ")(princ CountField) (princ " text's"))
     ) ;if
   ) ;progn
  ) ;if
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA 
      (vla-endundomark Doc)
  ) ;LA
  (command "_.Regenall")
  (princ)
) ;defun C:BGCFTSEL

(defun C:BGCFT ()(ConvField->Text t)(princ)) ;LA NC(x64)22.0(5997.3741.6106)_mega - все работает; Nc 21.0 работает (кроме полей мультивыносок AutoCAD), 
;;; (defun C:CFTAll ()(ConvField->Text nil))
(defun ConvField->Text ( Ask / Doc *error* ClearFieldInAllObjects) ;LA работает под Nc 21.0(кроме полей мультивыносок AutoCAD),
;;; t - Ask user nil - convert
;;; Как все поля чертежа сразу преобразовать в текст?
;;; Convert Field to Text
;;; Posted Vladimir Azarko (VVA)
;;; http://forum.dwg.ru/showthread.php?t=20190&page=2
;;; http://forum.dwg.ru/showthread.php?t=20190
  (vl-load-com)  
  (defun *error* (msg)(princ msg)
   (bg:layer-status-restore)
   (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
          (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
       (vla-endundomark doc)
   ) ;LA
   (princ)
  ) ;defun *error*
  
  (defun ClearFieldInAllObjects ( / txtstr tmp txt count CountField mtlist  ;лок. функция в ConvField->Text
                                    Doc) ;LA
   (setq Doc (vla-get-activedocument (vlax-get-acad-object)))
   (setq  CountField 0)  
   (vlax-for Blk	(vla-get-Blocks Doc)
    (if	(not(or (equal (vla-get-IsXref Blk) :vlax-true) ;;;kpbIc http://forum.dwg.ru/showpost.php?p=396910&postcount=30
           ;;; (vlax-property-available-p blk 'Path)
            (wcmatch (vla-get-name blk) "*|*")
        )   )
      (progn
	     (setq count 0
	           txt (strcat (if IsRus "Изменено " "Changed ") (vla-get-name Blk))
	     )
	     (princ txt) ;(grtext -1 txt) ;LA
;;;        (terpri)(princ "=================== ")(princ txt)
      (if (not (wcmatch (vla-get-name Blk) "`*T*")) ;_exclude table
          (vlax-for	Obj Blk
	         (setq count (1+ count))
	         (if (zerop(rem count 10))
	             (princ ;(grtext -1  ;LA
	              (strcat txt " : " (itoa count)))
	         ) 
           (setq CountField (ClearFieldInThisObject DOC Obj CountField))
          ) ;_ end of vlax-for
      ) ;if
     ) ;progn
    ) ;_ end of if
  ) ;_ end of vlax-for
  (vl-cmdf "_redraw") ;LA
  CountField 
 ) ;defun ClearFieldInAllObjects
  ;продолжение ConvField->Text
  (setq Doc (vla-get-activedocument (vlax-get-acad-object)))
  (bg:layer-status-save)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark Doc)
  ) ;LA
  (if(or (not Ask)    
	       (bg:msg-yes-no (if IsRus "Внимание"  "Attension") ;LA
	                      (if IsRus "Все поля будут преобразованы в текст !!!\nПродолжить?" ;LA
	                                "All fields will be transformed to the text!!!\nto Continue?") ;LA
	   )  )	;or 
     (progn
      (princ (if IsRus  ;LA
                 "\nКонвертирование в текст поля: " ;LA
                 "\nConverting  Field to text: "))  ;LA
      (princ ;LA
       (ClearFieldInAllObjects) ;LA убрала параметр Doc
      ) ;LA
  )  ) ;progn if
 
  (bg:layer-status-restore)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark Doc)
  ) ;LA
  (command "_.Regenall")  
  (princ)
) ;defun ConvField->Text

(defun ClearFieldInThisObject ( DOC Obj CountField / att txtstr mtList ;LA NC(x64)22.0(5997.3741.6106)_mega - работает; Nc 21.0 - работает, кроме полей мультивыносок AutoCAD
                               item col row j i tmp lock) ;LA 
 ;см. в ClearFieldInAllObjects, ConvField->Text, C:BGCFT
 (cond
  ((and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
	      (= (vla-get-ObjectName obj) "AcDbBlockReference")
		    (= (vla-get-HasAttributes obj) :vlax-true)
	 ) ;_ end of and
	 (foreach att (append (vlax-invoke obj 'Getattributes)
                          (vlax-invoke obj 'Getconstantattributes)
                )
      ;;;(setq txtstr (vla-get-Textstring att)) ;_Comment VVA 2011-12-09
    (if (vl-string-search "%<\\AcDiesel $(getvar,\"CTAB\")>%" (bg:fieldcode att)) ;_ADD VVA 2017-01-26
        (setq CountField (1+ CountField))
        (progn
           (setq txtstr (bg:get-TextString (vlax-vla-object->ename att)));_Add VVA 2011-12-09
           (vla-put-Textstring att "")
           (vla-put-Textstring att txtstr)
           (setq Ret t)
           (setq CountField (1+ CountField))
        )
      ) ;if
	 ) ;_ end of foreach
	)
	((and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		    (vlax-property-available-p Obj 'TextString)
	 ) ;_ end of and
;;;	    (setq txtstr (vla-get-Textstring Obj)) ;_Comment VVA 2011-12-09
   (if (vl-string-search "%<\\AcDiesel $(getvar,\"CTAB\")>%" (bg:fieldcode (vlax-vla-object->ename Obj))) ;_ADD VVA 2017-01-26
       (setq CountField (1+ CountField))
       (progn
        (setq txtstr (bg:get-TextString (vlax-vla-object->ename Obj)));_Add VVA 2011-12-09
        (vl-catch-all-apply '(lambda ()(vla-put-Textstring Obj "")(vla-put-Textstring Obj txtstr))) ;;;VVA 07/10/2014
        (setq CountField (1+ CountField))
       )
    );if
	 )
  ((and (vlax-write-enabled-p Obj) ;_Table ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
        (eq (vla-get-ObjectName Obj) "AcDbTable")
   )
   (and (vlax-property-available-p Obj 'RegenerateTableSuppressed)
        (vla-put-RegenerateTableSuppressed Obj :vlax-true)
   )
   (setq mtlist nil)
   (vlax-for item 
     (vla-item (vla-get-blocks DOC)(cdr(assoc 2 (entget(vlax-vla-object->ename obj)))))
     (if (and (vlax-write-enabled-p item) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		          (vlax-property-available-p item 'TextString)
	       ) ;_ end of and
      (progn
       ;; (setq ii (cons item ii))
       (setq mtlist (cons (list
;;;                          (vla-get-Handle item)
                              (mip_MTEXT_Unformat (vla-get-Textstring item))
                              (bg:get-TextString (vlax-vla-object->ename item))
                          )  mtlist ) ;cons
       )
     )) ;progn if 
   ) ;vlax-for item 
   (VL-CATCH-ALL-APPLY 
    '(lambda (col row / i j tmp lock)
      (setq j '-1 )
      (repeat row
        (setq j (1+ j) i '-1)
         (repeat col
          (setq i (1+ i))
          ;;;(vla-GetCellState obj j i)
          (if (and (= (vla-GetCellType Obj j i) acTextCell)
                   (not(zerop(vla-GetFieldId obj j i)))
              ) ;_Add VVA 2014-11-06
           (progn
            (setq lock (vla-GetCellState obj j i));_Формат ячейки ;_Add VVA 2015-07-08
            (vla-SetCellState obj j i 0) ;_Add VVA 2015-07-08
	          (if (setq tmp (assoc (mip_MTEXT_Unformat(vla-GetText Obj j i)) mtlist))
	           (progn
	           ;_(vla-SetText Obj j i "") ;;;_Change VVA 2014-10-30
	            (vla-SetText Obj j i (cadr tmp))
	           )
	          ) ;if
            (vla-SetCellState obj j i lock)
           )
          ) ;if
          (setq CountField (1+ CountField))
         );repeat col
        ) ;repeat row
     );lambda
     (list (vla-get-Columns Obj) (vla-get-Rows Obj))
   ) ;VL-CATCH-ALL-APPLY 
   (and (vlax-property-available-p Obj 'RegenerateTableSuppressed)
        (vla-put-RegenerateTableSuppressed Obj :vlax-false)
   ) ;and
   (vla-RecomputeTableBlock Obj :vlax-true)
  )
;;; Change VVA 2016-01-04
;;; http://forum.dwg.ru/showthread.php?p=1489832#post1489832        
  ((and (vlax-write-enabled-p Obj) ;_Dimension ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
         (wcmatch (strcase(vla-get-ObjectName Obj)) "*DIMENSION*")
         (not(equal(setq att(vla-get-TextOverride Obj)) ""))
    )
    (setq att (str-str-lst att "\\X") mtList nil)
    (vlax-for item 
     (vla-item (vla-get-blocks DOC)(cdr(assoc 2 (entget(vlax-vla-object->ename obj)))))
     (if (and (vlax-write-enabled-p item) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		          (vlax-property-available-p item 'TextString)
	       ) ;_ end of and
      (progn
       (setq mtList (cons (bg:get-TextString (vlax-vla-object->ename item)) mtList))
       ;;; (setq txtstr (bg:get-TextString (vlax-vla-object->ename item)))
      )
     ) ;if
    ) ;vlax-for item 
    (setq mtList (reverse mtList))
	  (if (null mtlist)(setq mtlist att))
    ;;;Проверяем количество абзацев размера
    (if (= (length att) 2)
     (progn
      (if (wcmatch "<>" (vl-string-trim " " (car att)))
          (setq txtstr (strcat "<>\\X" (cadr mtList)))
          (setq txtstr (strcat (BG:CONV-TO-STR(car mtList)) "\\X" (BG:CONV-TO-STR(cadr mtList))))
      ) ;if
     ) ;progn
     (setq txtstr (car mtList))
    ) ;if
    (vla-put-TextOverride Obj "")
    (vla-put-TextOverride Obj txtstr)
    (setq CountField (1+ CountField))
   )
  (t nil)
 ) ;cond
 CountField
) ;defun ClearFieldInThisObject


(defun C:APPDEL ( / nb nlst lst Rdn adoc ) ;LA работает под Nc 21.0, 22.0 только для пользовательских РД
  ;;;Mip Util mip-del-Rd
  (defun del-XDATA ( en Rdn / elist sub) ;лок. функция (C:APPDEL)
   (setq elist (entget en (list "*")) sub nil)
   (foreach i (cdr (assoc -3 elist))
     (if (not(wcmatch (strcase(car i))(strcase Rdn)))
       (setq sub (append sub (list i)))
       (setq sub (append sub (list(list (car i)))))
   ) ) ;foreach
   (setq sub (cons -3 sub)
        elist (subst sub (assoc -3 elist) elist) 
        elist (entmod elist))
  ) ;defun del-XDATA
  
  (setq adoc (vla-get-activedocument (vlax-get-acad-object)))
;_Получаем список РД Примитивов
  (if (setq nb (ssget "_X" '((-3 ("*")))))
    (progn
      (setq nlst nil lst (vl-remove-if 'listp (mapcar 'cadr (ssnamex nb))))
      (mapcar '(lambda (e1)
	     (mapcar '(lambda (rdn)
			           (if (not(member rdn nlst))
			               (setq nlst(append nlst (list rdn)))
			          )) ;lambda
                (mapcar 'car (car(bg:massoc -3 (entget e1 '("*")))))
	     )        ) ;mapcar lambda
	    lst) ;mapcar
      (setq nlst(vl-remove-if '(lambda(x)(wcmatch (strcase x) "ACAD*,ACDB*")) nlst))
      (setq Rdn (apply 'strcat (mapcar '(lambda(x)(strcat x ",")) nlst)))
      (mapcar '(lambda(x)(del-XDATA x Rdn)) lst)
    )
  ) ;if
  (princ "\nУдаленные РД: ")(mapcar 'print nlst)
  (princ)
) ;defun C:APPDEL
 
 ;Взорвать (расчленить) МН-БЛОК
;http://dwg.ru/f/showthread.php?t=11502
;https://forum.nanocad.ru/index.php?/topic/9520-kak-razbit-mn-blok-minsert-block/ 
;;LA проверить с вложенными анонимными блоками !!!
(defun C:UX ( / adoc uname bname *error* pbname ss) ;LA работает под Nc 21.0 сборка 5846 и выше
  ;LA 25.07.2022 Взрывает, но меняет масштаб на 1:1 на вложенных блоках ?!
  (defun *error* (msg)
    (princ msg)
    (bg:layer-status-restore)
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-endundomark adoc)
    ) ;LA
    (princ)
  ) ;_ end of defun
  
  (defun _copy_unnamed ( /  ;лок. функция в  C:UX ;LA
                           adoc blks objlist u1 n item ) ;LA добавила лок. переменные
  ;на входе: bname uname obj
  ;на выходе:  objlist
   (setq adoc (vla-get-activedocument (vlax-get-acad-object)))
    (setq blks (vla-get-blocks adoc)) ;LA
    (setq objlist nil
          n       1
          u1      (vla-item blks bname)
    ) ;_ end of setq
    (princ u1)
    (vlax-for obj u1
     ; (if IsTest (princ (strcat "Обрабатываю примитив " (itoa n) "; ")));LA 
      (grtext -1 (strcat "Обрабатываю примитив " (itoa n)))
      (setq objlist (cons obj objlist))
      (setq n (1+ n))
    ) ;_ end of vlax-for
    (princ(setq n (vla-get-insertionpoint obj)))

    (if IsTest (princ "Копирую примитивы начало ")) ;LA
    (grtext -1 "Копирую примитивы начало ")
    (mapcar '(lambda (item)
               (vla-move item (vlax-3d-point '(0 0 0)) n)
             ) ;_ end of lambda
            (vlax-safearray->list
              (vlax-variant-value
                (vla-copyobjects 
                  adoc ;(vla-get-activedocument (vlax-get-acad-object)) ;LA
                  (vlax-make-variant
                    (vlax-safearray-fill
                      (vlax-make-safearray
                        vlax-vbobject
                        (cons 0 (1- (length objlist)))
                      ) ;_ end of vlax-make-safearray
                      objlist
                    ) ;_ end of vlax-safearray-fill
                  ) ;_ end of vlax-make-variant
                                                  ;(vla-get-ModelSpace adoc)
                  (vla-get-block
                    (vla-get-activelayout
                      adoc ;(vla-get-activedocument (vlax-get-acad-object))
                    ) ;_ end of vla-get-ActiveLayout
                  ) ;_ end of vla-get-block
                ) ;_ end of vla-copyobjects
              ) ;_ end of vlax-variant-value
            ) ;_ end of vlax-safearray->list

    ) ;_ end of mapcar
    (if IsTest (princ "Копирую примитивы конец ")) ;LA
    (grtext -1 "Копирую примитивы конец ")
    (entdel uname)
   
  ) ;_ end of defun
  
  (defun la:prop_obj_columns-rows ( uname / ) ;LA перенесла в лок. ф-цию повторяющуюся проверку obj
   ;возвращает T или nil и obj
   (setq obj (vlax-ename->vla-object uname))
   (or (and (vlax-property-available-p obj "columns")
            (vlax-property-available-p obj "rows")
            (or (= (vla-get-columns obj) 1)
                (and (/= (vla-get-columns obj) 1)
                     (zerop (vla-get-ColumnSpacing obj))
            )   )
            (or (= (vla-get-rows obj) 1)
                (and (/= (vla-get-rows obj) 1)
                     (zerop (vla-get-RowSpacing obj))
            )   ) 
       ) ;_ end of and
       (and (not (vlax-property-available-p obj "columns"))
            (not (vlax-property-available-p obj "rows"))
       ) ;_ end of and
    ) ;_ end of or
   ) ;defun la:prop_obj_columns-rows ;LA
  ;====продолжение C:UX ==============
  (vl-load-com)
  (setq adoc (vla-get-activedocument (vlax-get-acad-object)))
  (bg:layer-status-save)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark adoc)
  );LA
  (if
     (and(setq uname (car (entsel "\nВыберите блок: ")))
         (setq bname (cdr (assoc 2 (entget uname)))
               pbname bname
         ) ;_ end of setq
         (wcmatch bname "`*U*,`*E*")  ;МН-блок начинается на *U
         (la:prop_obj_columns-rows uname) ;LA вынесла в лок. ф-цию повторяющийся кусок
         
    ) ;_ end of and
    (progn
      (if IsTest (progn (princ "\UX 1;")))
      (_copy_unnamed)
      (vl-catch-all-apply
        '(lambda ()
           (if
             (and
               (setq uname (entlast))
               (setq bname (cdr (assoc 2 (entget uname))))
               (wcmatch bname "`*U*")
               (la:prop_obj_columns-rows uname) ;LA вынесла в лок. ф-цию повторяющийся кусок
               
               (bg:msg-yes-no
                   (if IsRus "Внимание" "Attension") ;LA 2 шт. bg:msg-yes-no нельзя, т.к. проверяется результат 
                   (if IsRus (strcat "Похоже, что существует вложенность анонимных блоков!" ;LA
                                     "\nПредыдущее имя " pbname "\nТекущее имя " bname ;LA
                                     "\nПродолжить взрывать анонимные блоки?") ;_ end of strcat
                             (strcat "There nested anonymous blocks!"
                                     "\nLast name " pbname "\nCurrent name " bname
                                     "\nContinue to explode anonymous blocks?") ;_ end of strcat 
                   ) ;if ;LA       
               ) ;_ end of bg:msg-yes-no
             ) ;_ end of and
             (progn
              (if IsTest (progn (princ "\UX 2;")))
              (while
                (and
                  (setq uname (entlast))
                  (setq bname (cdr (assoc 2 (entget uname))))
                  (wcmatch bname "`*U*")
                  (not (eq pbname bname))
                  (la:prop_obj_columns-rows uname) ;LA вынесла в лок. ф-цию повторяющийся кусок

;;;                 (bg:msg-yes-no
;;;                   "Attension"
;;;                   (strcat
;;;                     "Похоже, сущестует вложенность анонимных блоков!"
;;;                     "\nПредыдущее имя "
;;;                     pbname
;;;                     "\nТекущее имя "
;;;                     bname
;;;                     "\nПродолжить взрывать анонимные блоки?"
;;;                    ) ;_ end of strcat
;;;                 ) ;_ end of bg:msg-yes-no
                ) ;_ end of and
                (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                       (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
                    (vla-endundomark adoc)
                );LA
                (setq pbname bname)
                (_copy_unnamed)
                (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                       (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
                    (vla-startundomark adoc)
                );LA
              ) ;_ end of while
              (while (> (getvar "CMDACTIVE") 0) (command))
              (if (setq ss (ssget "_x" (list (cons 0 "WIPEOUT")(cons 410 (getvar "ctab")))))
                (command "_draworder" ss "" "_b")
              )
            ) ;progn
           ) ;_ end of if
         ) ;_ end of lambda
      ) ;_ end of VL-CATCH-ALL-APPLY
    ) ;_ end of progn
  ) ;_ end of if
  (bg:layer-status-restore)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark adoc)
  ) ;LA
  (princ)
) ;_ end of defun C:UX

(defun bg:objectidtoobject (obj id) ;LA должно работать под Nc. Используется в M2B, U2B, U2BM, M2U 
;;; Код ниже закоментирован
;;; Связано с тем, что в 2015 Автокаде удалены методы objectidtoobject32
;;; Читать полностью http://help.autodesk.com/view/ACD/2015/ENU/?guid=GUID-6FEDBCCA-91D0-4782-AE5A-49BD4384FD8C
;;;  (if (> (vl-string-search "x64" (getvar "platform")) 0)
;;;    (if (vlax-method-applicable-p obj 'objectidtoobject32)(vla-objectidtoobject32 obj id)(vla-objectidtoobject   obj id))
;;;    (vla-objectidtoobject obj id)
;;;    ) ;_ end of if
;; LA   (setq obj (vlax-ename->vla-object (car (entsel))))
   (if (vlax-method-applicable-p obj 'objectidtoobject32)
       (vla-objectidtoobject32 obj id)
       (vla-objectidtoobject   obj id)
   )
  ) ;_ end of defun
  
;;;Convert Minsert block To Block  
;;LA Конвертирует в 2 неименованных блока, если есть вложенность МН-блоков
(defun C:M2B ( / adoc blks u1 n obj objlist uname bname unnamed_block cpo tmp_blk ss lst pat opt wrld)
;;; Posted Vladimir Azarko (VVA)
;;; http://forum.dwg.ru/showthread.php?t=11502&page=3
 (vl-load-com)
 (setq adoc (vla-get-activedocument (vlax-get-acad-object)) 
        blks (vla-get-blocks adoc) 
 ) ;_ end of setq
 (vla-AuditInfo adoc :vlax-true)
 (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
        (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
     (vla-startundomark adoc)
 );LA
 (if (setq ss (ssget "_:L" '((0 . "INSERT")
			      (-4 . "<OR")
			      (-4 . ">")(70 . 1)  ;кол-во столбцов ;LA было (-4 . ">")
			      (-4 . ">")(71 . 1)  ;кол-во рядов    ;LA было (-4 . ">")
			      (-4 . "OR>")
			      )))
  (progn
   (setq opt (mapcar '(lambda(x)(list x (getvar x))) '("UCSFOLLOW")))
   (mapcar '(lambda(x)(setvar (car x)(cadr x)))(list(list "UCSFOLLOW" 0)))
   (setq wrld (getvar "WORLDUCS"))
   (if (zerop wrld)(if command-s (command-s "_UCS" "_W")(command "_UCS" "_W")))
   (repeat (setq n (sslength ss)) ;_ end setq
         (setq lst (cons (ssname ss (setq n (1- n))) lst))
   ) ;_ end
   (setq ss nil n 0)
   (foreach uname lst
    (grtext -1 (strcat (if IsRus "Обработка " "Working ") (itoa (setq n (1+ n))))) ;LA
    (setq bname (cdr(assoc 2 (entget uname))))
    (setq obj (vlax-ename->vla-object uname))  
    (if (member '(100 . "AcDbMInsertBlock")  (entget uname))
     (progn
      (setq tmp_blk (vla-insertblock
		                 (bg:objectidtoobject adoc (vla-get-ownerid obj))
		                 (vla-get-InsertionPoint obj)
		                 bname
		                 (vla-get-xscalefactor obj)
		                 (vla-get-yscalefactor obj)
	                   (vla-get-zscalefactor obj)
		                ;(vla-get-rotation obj)
		                 0
		  )            )
	
      (mapcar
	     '(lambda (x y) (vlax-put-property tmp_blk x y))
	     '(Linetype LineWeight Color Layer)
	      (mapcar
	       '(lambda (x)
		      (vlax-get-property obj x))
	         '(Linetype LineWeight Color Layer)
	    ) )
      (setq cpo (vla-ArrayRectangular tmp_blk 
                                      (vla-get-rows obj)
                                      (vla-get-columns obj)
                                       1 
                                      (vla-get-RowSpacing obj)
                                      (vla-get-ColumnSpacing obj)
                                       0
      )         )
      (setq cpo (vlax-safearray->list(vlax-variant-value cpo)))
      (setq cpo (cons tmp_blk cpo))
      (foreach item cpo
	     (vla-rotate item (vla-get-InsertionPoint obj) (vla-get-rotation obj))
	    )
      (entdel uname)
    )) ;progn if
    
   )
   (mapcar '(lambda(x)(setvar (car x)(cadr x))) opt)
   (if (zerop wrld)(if command-s (command-s "_UCS" "_P")(command "_UCS" "_P")))
   (princ (if IsRus "Конвертация " "Converting "))(princ n)(princ (if IsRus " МН-блоков " " minsert blocks "))
  ) 
 ) 
 (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
        (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
     (vla-endundomark adoc)
 );LA
 (vl-cmdf "_.Redraw")
 (princ)
) ;defun C:M2B

;;; Unnamed to Block
(defun C:U2B ( / adoc blks u1 n obj objlist uname bname *error* bnameNew tmp_blk ) ;LA работает под Nc 22.0
  
  (defun *error* (msg)
    (princ msg)
    (bg:layer-status-restore)
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-endundomark adoc)
    );LA
    (princ)
  ) ;_ end of defun
  (vl-load-com)
  (bg:layer-status-save)
  (setq adoc (vla-get-activedocument (vlax-get-acad-object))
        blks (vla-get-blocks adoc)
  ) ;_ end of setq
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark adoc)
  );LA
  (if
     (and(setq uname (car (entsel (if IsRus "\nВыберите блок: " "\nSelect block: ")))) ;LA
         (wcmatch (setq bname (cdr (assoc 2 (entget uname)))) "`*U*,`*X*,`*E*")
         (setq obj (vlax-ename->vla-object uname))
         (or (and (vlax-property-available-p obj "columns")
                  (vlax-property-available-p obj "rows")
                  (= (vla-get-columns obj) 1)
                  (= (vla-get-rows obj) 1)
             ) ;_ end of and
             (and (not (vlax-property-available-p obj "columns"))
                  (not (vlax-property-available-p obj "rows"))
             ) ;_ end of and
         ) ;_ end of or
         (setq bnameNew (getstring (if IsRus "\nИмя блока: " "\nNew block name: "))) ;LA
         (or
          (while (or (not (snvalid bnameNew))
                    (member (strcase bnameNew) (tablelist "BLOCK"))
                ) ;_ end of or
           (alert (if IsRus "Недопустимое имя блока" "Incorrect block name"))
           (setq bnameNew (getstring (if IsRus "\nИмя блока: " "\nNew block name: ")))
          ) ;_ end of while
         t)
    ) ;_ end of and
     (progn
       (setq unnamed_block
              (vla-add (vla-get-blocks adoc)
                       (vlax-3d-point '(0 0 0))
                       bnameNew
              ) ;_ end of vla-add
       ) ;_ end of setq
       (setq u1 (vla-item blks bname)
             n  1
       ) ;_ end of setq
       (vlax-for item u1
         (grtext -1 (strcat (if IsRus ;LA
          "Обработка ... объект " "Working ... item ") (itoa n)))
         (setq objlist (cons item objlist))
         (setq n (1+ n))
       ) ;_ end of vlax-for
       (setq n (vlax-3d-point(trans(vlax-safearray->list(vlax-variant-value(vla-get-insertionpoint obj))) 0 uname)))
  ;;;     (setq n (vlax-3d-point(trans (vlax-safearray->list(vlax-variant-value n)) uname 0)))
       (grtext -1 (if IsRus ;LA
                     "Копирование объекта. Начало " "Coping item. Begin "))
       (vla-copyobjects
                     adoc
                     (vlax-make-variant
                       (vlax-safearray-fill
                         (vlax-make-safearray
                           vlax-vbobject
                           (cons 0 (1- (length objlist)))
                         ) ;_ end of vlax-make-safearray
                         objlist
                       ) ;_ end of vlax-safearray-fill
                     ) ;_ end of vlax-make-variant
                                                  ;(vla-get-ModelSpace adoc)
                     unnamed_block
       ) ;_ end of
       (grtext -1 (if IsRus ;LA
                     "Копирование объекта. Конец " "Coping item. End "))
       (setq tmp_blk (vla-insertblock
                   (bg:objectidtoobject adoc (vla-get-ownerid obj))
                                                  ;(vla-get-InsertionPoint obj)
                   n
                   (vla-get-name unnamed_block)
                   (vla-get-xscalefactor obj)
                   (vla-get-yscalefactor obj)
                   (vla-get-zscalefactor obj)
                   (vla-get-rotation obj)
                 ) ;_ end of vla-insertblock
       ) ;_ end of setq
       (mapcar
	      '(lambda (x y) (vlax-put-property tmp_blk x y))
	      '(Linetype LineWeight Color Layer)
	      (mapcar
	       '(lambda (x)	(vlax-get-property obj x))
	       '(Linetype LineWeight Color Layer))
	     )
       (vla-put-Normal tmp_blk (vla-get-Normal obj))
       (entdel uname)
     ) ;_ end of progn
  ) ;_ end of if
  (bg:layer-status-restore)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark adoc)
  );LA
  (princ)
) ;_ end of defun C:U2B

;;; Unnamed to Block Multiple
(defun C:U2BM (/ ss adoc blks pat u1 i n obj
              objlist  uname    bname    *error*  bnameNew tmp_blk
             )
  
  (defun *error* (msg)
    (princ msg)
    (bg:layer-status-restore)
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-endundomark adoc)
    );LA
    (princ)
  ) ;_ end of defun
  
  (vl-load-com)
  (bg:layer-status-save)
  (setq adoc (vla-get-activedocument (vlax-get-acad-object))
        blks (vla-get-blocks adoc)
  ) ;_ end of setq
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark adoc)
  );LA
  (setq pat "U2B-")
  (if(setq ss (ssget '((0 . "INSERT"))))
   (repeat (setq i (sslength ss))
    (setq uname (ssname ss (setq i (1- i))))
    (if (and (wcmatch (setq bname (cdr (assoc 2 (entget uname)))) "`*U*,`*X*")
             (setq obj (vlax-ename->vla-object uname))
         (eq (cond
              ((and (vlax-property-available-p obj 'isdynamicblock)
                    (= (vla-get-isdynamicblock obj) :vlax-true)
               ) ;_ end of and
               (vla-get-effectivename obj)
              )
              (t (vla-get-name obj))
             )
            bname
         ) ;eq
         (or (and (vlax-property-available-p obj "columns")
                  (vlax-property-available-p obj "rows")
                  (= (vla-get-columns (vlax-ename->vla-object uname)) 1)
                  (= (vla-get-rows (vlax-ename->vla-object uname)) 1)
             ) ;_ end of and
             (and (not (vlax-property-available-p obj "columns"))
                  (not (vlax-property-available-p obj "rows"))
             ) ;_ end of and
         ) ;_ end of or
         (setq n 0 bnameNew (strcat pat (substr bname 2)))
         (or
          (while (or (not (snvalid bnameNew))
                     (member (strcase bnameNew) (tablelist "BLOCK"))
                 ) ;_ end of or
           (setq bnameNew (strcat pat (substr bname 2) "-" (itoa (setq n (1+ n)))))
          ) ;_ end of while
         t)
     ) ;_ end of and
     (progn
       (setq unnamed_block
              (vla-add (vla-get-blocks adoc)
                       (vlax-3d-point '(0 0 0))
                       bnameNew
              ) ;_ end of vla-add
       ) ;_ end of setq
       (setq u1 (vla-item blks bname)
             n  1
             objlist nil
       ) ;_ end of setq
       (vlax-for item u1
         (grtext -1 (strcat (if IsRus ;LA
                                "Обработка ... объекта " "Working ... item ")
                            (itoa n))
         )
         (setq objlist (cons item objlist))
         (setq n (1+ n))
       ) ;_ end of vlax-for
   ;;;    (setq n (vla-get-insertionpoint (vlax-ename->vla-object uname)))
       (setq n (vlax-3d-point(trans(vlax-safearray->list(vlax-variant-value(vla-get-insertionpoint obj))) 0 uname)))
       (grtext -1 (if IsRus ;LA
                      "Копирование объекта. Начало... " "Coping item. Begin ... "))
       (vla-copyobjects
                     adoc
                     (vlax-make-variant
                       (vlax-safearray-fill
                         (vlax-make-safearray
                           vlax-vbobject
                           (cons 0 (1- (length objlist)))
                         ) ;_ end of vlax-make-safearray
                         objlist
                       ) ;_ end of vlax-safearray-fill
                     ) ;_ end of vlax-make-variant
                                                  ;(vla-get-ModelSpace adoc)
                     unnamed_block
       ) ;_ end of 
       (grtext -1 (if IsRus ;LA
                      "Копирование объекта. Конец " "Coping item. End "))
       (setq tmp_blk (vla-insertblock
                      (bg:objectidtoobject adoc (vla-get-ownerid obj))
                                                  ;(vla-get-InsertionPoint obj)
                       n
                      (vla-get-name unnamed_block)
                      (vla-get-xscalefactor obj)
                      (vla-get-yscalefactor obj)
                      (vla-get-zscalefactor obj)
                      (vla-get-rotation obj)
                    ) ;_ end of vla-insertblock
       ) ;_ end of setq
       (mapcar
	      '(lambda (x y) (vlax-put-property tmp_blk x y))
	      '(Linetype LineWeight Color Layer)
	      (mapcar
	       '(lambda (x)(vlax-get-property obj x))
	       '(Linetype LineWeight Color Layer)
	     ))
       (vla-put-Normal tmp_blk (vla-get-Normal obj))
       (entdel uname)
     ) ;_ end of progn
    ) ;_ end of if
   ) ;repeat
  ) ;if
  (bg:layer-status-restore)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark adoc)
  );LA
  (princ)
) ;_ end of defun  C:U2BM


  ;;;Convert Minsert block To Block
  ;;;http://dwg.ru/f/showthread.php?t=11502&page=3
(defun C:M2U ( / adoc blks u1 n obj objlist uname bname unnamed_block cpo tmp_blk ss lst)
   (vl-load-com) 
   (setq adoc (vla-get-activedocument (vlax-get-acad-object)) 
         blks (vla-get-blocks adoc) 
   ) ;_ end of setq 
   (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
          (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
       (vla-startundomark adoc)
   ) ;LA
  
  (if (setq ss (ssget "_:L" '((0 . "INSERT")(-4 . ">")(70 . 1)(71 . 1))))
  (progn
   (repeat (setq n (sslength ss)) ;_ end setq
           (setq lst (cons (ssname ss (setq n (1- n))) lst))
   ) ;_ end
   (setq ss nil n 0)
   (foreach uname lst
    (grtext -1 (strcat (if ISRus "Обработка " "Working ") (itoa (setq n (1+ n)))))
    (setq bname (cdr(assoc 2 (entget uname))))  
    (setq u1 (vla-item blks bname))
    (setq obj (vlax-ename->vla-object uname) objlist nil)  
    (vlax-for item u1 (setq objlist (cons item objlist)))
    (setq unnamed_block (vla-add (vla-get-blocks adoc)(vlax-3d-point '(0 0 0)) "*U"))
    (setq cpo (vla-copyobjects adoc
                 (vlax-make-variant 
                   (vlax-safearray-fill 
                     (vlax-make-safearray 
                       vlax-vbobject 
                       (cons 0 (1- (length objlist))) 
                     ) ;_ end of vlax-make-safearray 
                     objlist 
                   ) ;_ end of vlax-safearray-fill 
                 ) ;_ end of vlax-make-variant 
                ;(vla-get-ModelSpace adoc)
		             unnamed_block
              )
    ) ;setq
    (setq tmp_blk (vla-insertblock
		               (bg:objectidtoobject adoc (vla-get-ownerid obj))
		               (vla-get-InsertionPoint obj)
		               (vla-get-name unnamed_block)
		               (vla-get-xscalefactor obj)
		               (vla-get-yscalefactor obj)
		               (vla-get-zscalefactor obj)
		              ;(vla-get-rotation obj)
		               0
		              ) ;vla-insertblock
	  ) ;setq
    (setq cpo (vla-ArrayRectangular tmp_blk
               (vla-get-rows obj)(vla-get-columns obj) 1
               (vla-get-RowSpacing obj)(vla-get-ColumnSpacing obj) 0)
    ) ;setq
    (setq cpo (vlax-safearray->list(vlax-variant-value cpo)))
    (setq cpo (cons tmp_blk cpo))
    (foreach item cpo
	   (vla-rotate item (vla-get-InsertionPoint obj) (vla-get-rotation obj))
	  ) ;foreach
    (entdel uname)
   ) ;foreach
   (princ "Converting ")(princ n)(princ " minsert blocks")
  ) ;progn 
 ) ;if 
 (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
        (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark adoc)
 ) ;LA
 (vl-cmdf "_.Redraw")
 (princ)
) ;defun C:M2U

(defun C:BGCOLORXREF ( / doc col xreflist) ;LA работает под Nc 21.0, 22.0
  (vl-load-com)
;;;  (alert
;;;    "\This lisp change color xref\nONLY ON A CURRENT SESSION"
;;;  ) ;_ end of alert
  (setq doc (vla-get-activedocument (vlax-get-acad-object)))
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark doc)
  );LA
  (bg:layer-status-save)
   (vlax-for item (vla-get-Blocks doc)
      (if (= (vla-get-IsXref item) :vlax-true)
         (setq xreflist (cons (vla-get-name item) xreflist))
        )
     )
  (if (and xreflist
           (setq xreflist (_dwgru-get-user-dcl "Выберите ссылки " (acad_strlsort xreflist) t))
           (setq col (acad_colordlg 7 t))
           )
    (ChangeXrefAllObjectsColor doc col xreflist) ;_ col — color number
  ) ;_ end of if
  (bg:layer-status-restore)
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark doc)
  );LA
  (princ)
) ;_ end of defun C:BGCOLORXREF
(progn ;LA Описание Библиотеки DWGruLispLib
;;; ************************************************************************
;;; * Библиотека DWGruLispLib Copyright ©2008  DWGru Programmers Group
;;; * _dwgru-get-user-dcl (Кандидат)
;;; * Запрос значения у пользователя через диалоговое окно
;;; * 26/01/2008 Версия 0002. Редакция Владимир Азарко (VVA)
;;;              - Выход по двойному клику, если запрещен множественный выбор (multi-nil)
;;;              - Обработка нескольких колонок
;;; * 21/01/2008 Версия 0001. Редакция Владимир Азарко (VVA)
;;; ************************************************************************
;;; * Library DWGruLispLib Copyright © 2008 DWGru Programmers Group
;;; * _dwgru-get-user-dcl (Candidate)
;;; * Inquiry of value at the user through a dialogue window
;;; * 26/01/2008 Version 0002. Edition Vladimir Azarko (VVA)
;;; - the Output on double a clique if the plural choice (multi-nil) is forbidden
;;; - Processing of several columns
;;; * 21/01/2008 Version 0001. Edition Vladimir Azarko (VVA)
) ;LA
(defun _DWGRU-GET-USER-DCL (ZAGL        INFO-LIST   MULTI ;LA Работает под Nc 21.0, 22.0
                            /           FL          RET
                            DCL_ID      MAXROW      MAX_COUNT_COL
                            COUNT_COL   I           LISTBOX_HEIGHT
                            LST         _LOC_FINISH _LOC_CLEAR
                            NCOL tmp
                           )
(progn ;LA Описание _DWGRU-GET-USER-DCL EN
 ;| 
* ENGLISH
* Inquiry of value at the user through a dialogue window
* Dialogue is formed to "strike"
* the Quantity of lines on page without scrolling is set by variable MAXROW.
* It is necessary to remember, that number MAXROW increases on 3.
* the Maximum quantity of columns is set by variable MAX_COUNT_COL
* It is published
     http://dwg.ru/f/showthread.php?p=203746#post203746
* Parameters of a call:
    zagl - heading of a window [String]
    info-list - the list of line values [List of String]
    multi - t - the plural choice is resolved, nil-is not present
      
* Returns:
 The list of the chosen lines or nil - a cancelling
* the Example
 (_dwgru-get-user-dcl " Specify a variant " ' ("First" "Second" "Third") nil); _-> ("First") 
 (_dwgru-get-user-dcl " Specify a variant " ' ("First" "Second" "Third") t); _-> ("First"  "Second ")
 (_dwgru-get-user-dcl " Specify a variant "
   (progn (setq i 0 lst nil) (repeat 205 (setq lst (cons (strcat "Значение-" (itoa (setq i (1 + i)))) lst))) (reverse lst)) nil)
 (_dwgru-get-user-dcl " Specify a variant, using CTRL and SHIFT for a choice "
   (progn (setq i 0 lst nil) (repeat 205 (setq lst (cons (strcat "Значение-" (itoa (setq i (1 + i)))) lst))) (reverse lst)) t)
 |;
);LA 
(progn ;LA Описание _DWGRU-GET-USER-DCL RUS
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
    info-list - список строковых значений [List of String]
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
) ;LA
 ;_ ===== КОНСТАНТЫ ============

  (setq MAXROW 41) ;_макc. кол-во строк без скроллинга (К нему дальше добавится еще 3 строчки)
                   ;_  max lines without scrolling (To it 3 more lines further will be added)
  (setq MAX_COUNT_COL 4) ;_максимальное количество колонок
                         ;_ ; _ a maximum quantity of columns
;;============== Локальные функции START==================
;;============== Local functions START========================

  (defun _LOC_FINISH ()       ;лок. функции _DWGRU-GET-USER-DCL
    (setq I   0
          RET NIL
    ) ;_ end ofsetq
    (repeat COUNT_COL
      (setq I (1+ I))
      (setq RET (cons (cons I (get_tile (strcat "info" (itoa I)))) RET))
    ) ;_ end ofrepeat
    (setq RET (reverse RET))
    (done_dialog 1)
  ) ;_ end of defun  _LOC_FINISH
  (defun _LOC_ERR-TILE (what) ;лок. функции _DWGRU-GET-USER-DCL
    ;;;what - string or nil
    (if what
      (set_tile "error" what)
    (if MULTI
        (set_tile "error"
                  (if IsRus ;LA
                    "Используйте CTRL и SHIFT для выбора"
                    "Use CTRL and SHIFT for a choicet"
                  ) ;_ end ofif
        ) ;_ end ofset_tile
        (set_tile "error"
                  (if IsRus ;LA
                    "Можно выбирать двойным щелчком"
                    "It is possible to choose double click"
                  ) ;_ end ofif
        ) ;_ end ofset_tile
      ) ;_ end ofif
      )
    ) ;defun _LOC_ERR-TILE
  (defun _LOC_CLEAR (NOMER)   ;лок. функции _DWGRU-GET-USER-DCL
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
  ) ;_ end of defun  _LOC_CLEAR

;;;==================== Локальные фунцкции END ==================================
;;;==================== Local functions END ==================================

;;;==================== MAIN PART ===============================================

  (if (null ZAGL)
    (if IsRus ;LA
      (setq ZAGL "Выбор")
      (setq ZAGL "Select")
    ) ;_ end ofif
  ) ;_ end if
  (if (zerop (rem (length INFO-LIST) MAXROW)) ;_Целое количество столбцов
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
  ) ;_ end of if
  (setq I 0)
  (setq FL (vl-filename-mktemp "dwgru" NIL ".dcl"))
  (setq RET (open FL "w")
        LST NIL
  ) ;_ end ofsetq
  (mapcar '(lambda (X) (write-line X RET))
          (append (list "dwgru_get_user : dialog { "
                        (strcat "label=\"" ZAGL "\";")
                        ": boxed_row {"
                        (if IsRus ;LA
                          "label = \"Значение\";"
                          "label = \"Value\";"
                        ) ;_ end of if
                  ) ;_ end oflist
                  (repeat COUNT_COL
                    (setq LST
                           (append
                             LST
                             (list
                               " :list_box {"
                              ; "alignment=top ;"
                               (if MULTI
                                 "multiple_select = true ;"
                                 "multiple_select = false ;"
                               ) ;_ end of if
                               (strcat
                               "width="
                               (itoa
                               ((lambda(len)
                                  (setq len
                                  (cond ((and
                                           (< COUNT_COL 3)
                                           (< len 93)
                                           )
                                         len
                                         )
                                        ((and
                                           (> COUNT_COL 2)
                                           (< len 73)
                                           )
                                         len
                                         )
                                        (t 41)
                                        )
                                        )
                                  (if (< len 25) 25 len)
                                  )
                                 (apply 'max (mapcar 'strlen info-list))
                                 )
                               )
                               ";"
                               )
                               (strcat "height= " (itoa LISTBOX_HEIGHT) " ;")
                               "is_tab_stop = false ;"
                               (strcat "key = \"info" (itoa (setq I (1+ I))) "\";}")
                             ) ;_ end oflist
                           ) ;_ end ofappend
                    ) ;_ end ofsetq
                  ) ;_ end ofrepeat
                  (list "}"
                    ":row{"
                    "ok_cancel_err;}}"
                  ) ;_ end oflist
          ) ;_ end of list
  ) ;_ end of mapcar
  (setq RET (close RET))
  (if (and (null (minusp (setq DCL_ID (load_dialog FL))))
           (new_dialog "dwgru_get_user" DCL_ID)
      ) ;_ end and
    (progn
      (setq LST INFO-LIST)
      ((lambda (/ RET1 BUF ITM)

         (repeat (1- COUNT_COL)
           (setq I '-1)
           (while (and (setq ITM (car LST))
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
       ) ;_ end oflambda
      )
      (if LST
        (setq RET (cons LST RET))
      ) ;_ end ofif
      (setq LST (reverse RET))
      (setq I 0)
      (mapcar '(lambda (THIS_LIST)
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

    (if (not MULTI) (set_tile "info1" "0")) ;_Add 2016-09-22 VVA
    (if (= COUNT_COL 1)(set_tile "info1" "0"));_Add 2016-09-22 VVA
      (setq I 0
            NCOL 1
      ) ;_ end ofsetq
      (repeat COUNT_COL
        (action_tile
          (strcat "info" (itoa (setq I (1+ I))))
          (strcat "(progn (if (= $reason 1)(_LOC_ERR-TILE (nth (atoi(get_tile \"info1\")) info-list))(_LOC_ERR-TILE nil)) (setq Ncol "
                  (itoa I)
                  ")(if (not multi)(_loc_clear Ncol))"
                  "(if (and (not multi)(= $reason 4))(_loc_finish)))"
          ) ;_ end ofstrcat
        ) ;_ end ofaction_tile
      ) ;_ end ofrepeat
      (action_tile "cancel" "(done_dialog 0)")
      (action_tile "accept" "(_loc_finish)")
      (_LOC_ERR-TILE nil)
      (if (zerop (start_dialog))
        (setq RET NIL)
        (progn
          (setq
            RET (apply
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
) ;_ end of defun  _DWGRU-GET-USER-DCL


(defun ChangeXrefAllObjectsColor (Doc Color xreflist / tmp txtstr txt count TrueColor pat) ;LA работает под Nc 21.0
  (setq xreflist (mapcar 'strcase xreflist))  
  (setq pat(mapcar '(lambda(x)(strcat x "|*,")) xreflist))
  (setq pat (apply 'strcat pat))

  (vlax-for item (vla-get-Layers doc)
      (if (wcmatch (strcase (vla-get-name item)) pat)
	(vla-put-color item color)
      )
    )
  (vlax-for Blk	(vla-get-Blocks Doc)
    (cond
      ((or (and (= (vla-get-IsXref Blk) :vlax-true) (member (strcase(vla-get-name Blk)) xreflist))
	         (and	(= (vla-get-IsXref Blk) :vlax-false) (wcmatch (strcase(vla-get-name Blk)) pat )) ;_ "*|*" ;_ end of and
       ) ;_ end of or
       (setq count 0 txt (strcat "Changed " (vla-get-name Blk)))
       (grtext -1 txt)
       (vlax-for Obj Blk
      	(setq count (1+ count))
	;;;(if (zerop(rem count 10))(grtext -1 (strcat txt " : " (itoa count))))
        (grtext -1 (strcat txt " : " (itoa count)))
        (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                 (vlax-property-available-p Obj 'TrueColor)
                 (not(eq(vla-get-ObjectName Obj) "AcDbZombieEntity"))
            )
            (progn
             (setq TrueColor (vla-get-TrueColor obj))
             (vla-put-ColorMethod TrueColor acColorMethodByACI)
             (vla-put-ColorIndex TrueColor Color)
             (VL-CATCH-ALL-APPLY 'vla-put-TrueColor (list obj TrueColor))
             )
        )
	      (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		             (vlax-property-available-p Obj 'Color)
                 (not(eq(vla-get-ObjectName Obj) "AcDbZombieEntity"))
	          ) ;_ end of and
	          (VL-CATCH-ALL-APPLY 'vla-put-Color (list Obj Color))
	      ) ;_ end of if
	      (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		             (vlax-property-available-p Obj 'TextString)
	          ) ;_ end of and
	         (progn
;;; >>>--------- comment VVA 2011-04-28            
;;;	    (setq txtstr
;;;		   (if (vlax-method-applicable-p Obj 'FieldCode)
;;;		       (vla-FieldCode Obj)
;;;		       (vlax-get-property Obj 'TextString))
;;;		  )
;;; <<< --------- comment VVA 2011-04-28            

;;; >>>--------- ADD VVA 2011-04-28                        
            (setq txtstr (bg:FieldCode (vlax-vla-object->ename Obj)))
;;; <<<--------- ADD VVA 2011-04-28                                    
	          (setq tmp 0)
	          (while (setq tmp (VL-STRING-SEARCH "\\C" txtstr tmp))
	           (setq txtstr
	           (vl-string-subst (strcat (substr txtstr (1+ tmp) 2)(itoa Color) ";")
	                            (substr txtstr (1+ tmp) (- (1+ (VL-STRING-SEARCH ";" txtstr tmp)) tmp))
		                          txtstr
		                          tmp )
		         )
	           (setq tmp (+ tmp 3))
	          )
	    ;;;(vla-put-Textstring Obj txtstr)
            (VL-CATCH-ALL-APPLY 'vla-put-Textstring (list Obj txtstr))
	         )
	        ) ;_ end of if
	      (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		  (= (vla-get-ObjectName obj) "AcDbBlockReference")
		  (= (vla-get-HasAttributes obj) :vlax-true)
	     ) ;_ end of and
           (vl-catch-all-apply '(lambda()
	   (foreach att	(vlax-safearray->list
			  (vlax-variant-value (vla-GetAttributes obj))
			) ;_ end of vlax-safearray->list
	     (if (and (vlax-write-enabled-p att) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		      (vlax-property-available-p att 'Color)
		 ) ;_ end of and
	       (VL-CATCH-ALL-APPLY 'vla-put-Color (list att Color)) ;_(vla-put-Color att Color)
	     ) ;_ end of if
	   ) ;_ end of foreach
                                  )
             )
	 ) ;_ end of if
	      (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		  (wcmatch (vla-get-Objectname Obj) "*Dimension*,AcDb*Leader")
	     ) ;_ end of and
	   (progn
	    (if IsTest (vlax-dump-object obj 1)) ;LA
	    (if (vlax-property-available-p Obj 'ExtensionLineColor) ;LA
	     (vl-catch-all-apply 'vla-put-ExtensionLineColor (list Obj Color))
	    ) ;LA
	    (if (vlax-property-available-p Obj 'TextColor) ;LA
	     (vl-catch-all-apply 'vla-put-TextColor (list Obj Color))
	    ) ;LA
	    (if (vlax-property-available-p Obj 'DimensionLineColor) ;LA
	     (vl-catch-all-apply 'vla-put-DimensionLineColor (list Obj Color))
	    ) ;LA
	    
	    (if (vlax-property-available-p Obj 'LeaderLineColor)
	      ; (progn
	       (la:ru-error-catch ;LA добавила обработчик ошибок
           (function (lambda ()  ;; Это действие, в котором может возникнуть ошибка
           ;LA может возникнуть ошибка, если усановлено несколько нанокадов
            (setq tmp (vla-getinterfaceobject (vlax-get-acad-object)
		                   (if (vl-string-search "nano" (vlax-product-key))
		                       "OdaX.AcadAcCmColor" ;LA AutoCAD.AcCmColor надо заменять на OdaX.AcadAcCmColor для nanoCAD
		                       (strcat "AutoCAD.AcCmColor." (substr (getvar "ACADVER") 1 2)) 
		                   )
		        )) ;function
		        (vla-put-colorindex  tmp  Color)
		        (vl-catch-all-apply 'vla-put-LeaderLineColor (list Obj tmp))
          ))  
          (function (lambda (x) ;; А здесь действия в случае ошибки
            (princ (if IsRus "\nПредупреждение. OdaX.AcadAcCmColor. Несоответствие версий! "
                                 "\nWarning. OdaX.AcadAcCmColor. Version mismatch! "))
          )) ;function
          ) ;la:ru-error-catch ;LA ,было progn  
	    ) ;if
	   ) ;_ end of progn
	  ) ;_ end of if
       ) ;_ end of vlax-for
      )
      (t nil)
    ) ;_cond
  ) ;_ end of vlax-for
    ;;;Обработка стилей мультилиний

  (vla-regen Doc acAllViewports)
;;  (vl-cmdf "_regenall")
) ;_ end of defun  ChangeXrefAllObjectsColor

;; LA адаптировала, работает под Nc 21.0, т.к. удалялись всегда штриховки с выкл, заморож, заблок. слоев, не смотря на блокировки слоев 
(defun bg:hatch-delete-form-Block (Blk layers / lay item Obj itemLay) ;LA добавила параметр layers, работает под Nc22.0
  ;;; Blk -vla-object "AcDbBlockTableRecord"
  (if	(= (vla-get-IsXref Blk) :vlax-false) ; если не внешняя ссылка, то идем дальше
   (progn
	  (if (> (vla-get-count Blk) 100)
	   ;(bg:progress-init ;LA
	   (progn (princ      ;LA заменила
	    (strcat (vla-get-name Blk) " :")
	    )(princ     ;LA добавила
	     (vla-get-count Blk)
	     ) ;_ end of bg:progress-init
	   ) ;LA progn
	   (progn
	    (setvar "MODEMACRO" (vla-get-name Blk)) 
	   ) ;_ end of progn
	  ) ;_ end of if
	  (vlax-for Obj Blk
    (setq lay nil)
    (vlax-for itemLay layers ;LA начало доп.проверки
      (if IsTest (progn (princ "\n1 itemlay = ")(princ itemLay))) ;LA для отладки
      
      (if (and (= (vla-get-Name itemLay) (vla-get-layer Obj))
                  (not(vlax-erased-p Obj))
                  (or (= (vla-get-lock itemLay) :vlax-true)
                      (= (vla-get-freeze itemLay) :vlax-true)
                      (= (vla-get-LayerOn itemLay) :vlax-false)))
        (progn 
          (if IsTest (progn(princ "\n1 (vlax-write-enabled-p Obj) = ")(princ (vlax-write-enabled-p Obj)))) ;LA для отладки
          (setq lay(vla-get-layer Obj))
          
        )) ;progn ;LA конец доп. проверки блокировки/выкл./заморозки слоев со штриховкой
      ) ;vlax-for itemLay ;LA
	     
	       (if IsTest (progn(princ "\n2 (vlax-write-enabled-p Obj) = ")(princ (vlax-write-enabled-p Obj)))) ;LA для отладки
	       (if IsTest (progn(princ "\n3 (vlax-erased-p Obj) = ")(princ (vlax-erased-p Obj)))) ;LA для отладки
	       (if (and (= (vla-get-ObjectName Obj) "AcDbHatch")
	                (not (vlax-erased-p Obj)) ;LA может лишнее.ю но не помешает
                  (vlax-write-enabled-p Obj) ;LA в Nc 21.0 всегда Т (дефект #7699) ;исправлен в NC(x64)21.1(5826.3706.5936)_mega
             ) ;and       
             (if lay ;LA добавила, т.к. не срабатывает (vlax-write-enabled-p Obj)
              (princ (strcat "\n Игнорирована штриховка на слое: " lay)) ; LA добавила
             ;(progn (if IsTest (VLAX-DUMP-OBJECT Obj)) ;LA для отладки
              (vl-catch-all-apply 'vla-delete (list Obj)) ;) ;LA для отладки
             ) ;LA
    	   ) ;_ end of if
	 	 ) ;_ end of vlax-for
	 ;(bg:progress-clear) ;LA забила
  ) ;_ end of progn
 ) ;_ end of if
) ;_ end of defun bg:hatch-delete-form-Block
(defun bg:hatch-delete ( adoc IgnoreLockLayer /  *error* layers) ;LA адаптировала, работает под Nc 21.0, 22.0
  ;;; adoc - active document (setq aDOC (vla-get-activedocument (vlax-get-acad-object)))
  ;;; IgnoreLockLayer -t - ignore nil - not
  (defun *error* (msg)
    (setvar "MODEMACRO" "")
    (princ msg)
    (vla-regen aDOC acactiveviewport)
    ; (bg:progress-clear) ;LA не работает под Nc
    (bg:layer-status-restore)   ;восстанавливаем блокировки слоев
    (princ)
  ) ;_ end of defun
  
  ;;; (setq aDOC (vla-get-activedocument (vlax-get-acad-object)))
  (if IsTest (princ IgnoreLockLayer)) ;LA
  (setq layers (la:GetLays)) ;LA добавила получение объекта таблицы слоев чертежа
  (setq *BG_LAYER_LST* nil) ;LA добавила очистку списка слоев для восстановления
  (if IgnoreLockLayer  ;LA заменила and на if, т.к. разблокировались все слои
      (bg:layer-status-save) ; разблокируем/размораж/включаем все слои, если игнорируем замороженные и заблок., выкл. слои 
  ) ;if
  (vlax-for Blk (vla-get-Blocks aDOC) ;LA штриховка - это тоже блок
	 (bg:hatch-delete-form-Block Blk layers)
  )
  (bg:layer-status-restore)   ;восстанавливаем блокировки слоев
  (vla-regen aDOC acActiveViewport)
  (princ)
) ;_ end of defun bg:hatch-delete

;(setq IsTest T) (C:BGHATCHDEL) (setq IsTest nil) ;LA для проверки
(defun C:BGHATCHDEL () ;LA работает под Nc 21.0, 22.0 добавила запрос на удаление штриховки с выключенных слоев
  (bg:hatch-delete (vla-get-activedocument (vlax-get-acad-object))
   (bg:msg-yes-no
      (if IsRus "Удаление Штриховки" "Remove the hatch") ;LA
      (if IsRus ;LA
          "Удалять штриховку с \nзаблокированных и/или замороженных/выключенных слоев?" 
          "Remove hatch from \n locked and/or frozen/Off layers?")
    ) ;bg:msg-yes-no
  ) ;bg:hatch-delete
) ;defun C:BGHATCHDEL

(progn ;LA скрыть закомментированое
;;;(defun c:erase-hatch (/ adoc)
;;;  (vla-startundomark (setq adoc (vla-get-activedocument (vlax-get-acad-object))))
;;;  (vlax-for blk_def (vla-get-blocks adoc)
;;;    (if (equal (vla-get-isxref blk_def) :vlax-false)
;;;      (vlax-for ent blk_def
;;;        (if (= (vla-get-objectname ent) "AcDbHatch")
;;;          (vl-catch-all-apply
;;;            (function
;;;              (lambda ()
;;;                (vla-erase ent)
;;;                ) ;_ end of lambda
;;;              ) ;_ end of function
;;;            ) ;_ end of vl-catch-all-apply
;;;          ) ;_ end of if
;;;        ) ;_ end of vlax-for
;;;      ) ;_ end of if
;;;    ) ;_ end of vlax-for
;;;  (vla-endundomark adoc)
;;;  (princ)
;;;  ) ;_ end of defun
) ;LA 
(defun bg:Color-to-ACIcolor ( / txt count *error* ;Изменяет цвет с RGB на ACI ;LA под Nc 21.0 как-то работает
                               Blk Obj txt Lay) ;LA
  (defun *error* (msg)
    (princ msg)
    (bg:layer-status-restore)
    (princ)
  ) ;_ end of defun
  (bg:layer-status-save)
  (vlax-for Blk	(vla-get-blocks (vla-get-activedocument (vlax-get-acad-object))) ;_ end of vla-get-blocks
    (setq count 0)
    (prompt ;(grtext -1 ;LA под Nc 21.0 не выводились сообщения
     (setq txt (strcat (if IsRus ;LA
                           "Проверяемые объекты: " "Inspecting objects: ")
                       (vla-get-name Blk)))) ;_ end of grtext
    (if (or
          (not(wcmatch (vla-get-name Blk) "*|*")) 
          (eq (vla-get-isxref Blk) :vlax-false)
        )
        (progn
	       (vlax-for Obj Blk
	        (setq count (1+ count))
	        (if (zerop (rem count 10))
	            (prompt ;(grtext -1 ;LA под Nc 21.0 не выводились сообщения (grtext -1 
	            (strcat txt " : " (itoa count)))
	        )
	        (if (and (vlax-write-enabled-p Obj) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
		               (vlax-property-available-p Obj 'Color)
	            )
	            (vla-put-color Obj (vla-get-color Obj))
	        )
	       ) ;_ end of vlax-for
        ) ;_ end of progn
        (progn
          (princ "\nSkip = ")(princ (vla-get-name Blk))
        )
    ) ;_ end of if
  ) ;_ end of vlax-for
  (vlax-for Lay	
   (vla-get-layers (vla-get-activedocument (vlax-get-acad-object)))
   (vla-put-color Lay (vla-get-color Lay))
  )
  (bg:layer-status-restore)
) ;defun bg:Color-to-ACIcolor
(defun C:BGRGB2ACI ( ) ;Изменяет цвет с RGB на ACI ; LA работает пд Nc 21.0, 22.0
  (bg:Color-to-ACIcolor)
  (command "_.Regenall")
  (princ)
) ;defun C:BGRGB2ACI
; (bg:blfixdialog)
(defun bg:blfixdialog ( / dcl dch all_block_list fix_block_list what opt Express ;LA работает под Nc 21.0, 22.0
                      ) 
  (defun sync1 ( / x s) ;лок. функция в (bg:blfixdialog)
    (setq all_block_list (ACAD_STRLSORT
      (vl-remove-if-not
       '(lambda (x)
         (or(and(bg:bitset opt 2048) ;;;Unnamed
                (wcmatch x "`*U*")  )
            (snvalid x)
        ))                    
       ((lambda (s / d r)
         (while (setq d (tblnext s (null d)))
          (setq r (cons (cdr (assoc 2 d)) r))
         )
        )"block" )
    )      ) ) ;setq ACAD_STRLSORT vl-remove-if-not
           
    (updatelist "allblock" all_block_list)
    (updatelist "fixblock" (setq fix_block_list nil))
    (set_tile "allblock" "0")
  ) ;defun sync1
  
  (defun _move_ux ( / х s ) ;лок. функция в (bg:blfixdialog)
    (setq all_block_list
       (acad_strlsort
         (vl-remove-if-not
           '(lambda (x)
              (or (and (= (get_tile "ux") "1") ;_;;;Unnamed
                       (wcmatch x "`*U*")    ) ;_ end of and
                  (snvalid x)
              ) ;_ end of or
            ) ;_ end of lambda
           ((lambda (s / d r)
              (while (setq d (tblnext s (null d)))
                (setq r (cons (cdr (assoc 2 d)) r))
              ) ;_ end of while
            ) ;_ end of lambda
             "block"
           )
         ) ;_ end of vl-remove-if-not
       ) ;_ end of ACAD_STRLSORT
    );setq    
    (if (= (get_tile "ux") "0")
      (progn
        (updatelist "allblock" (setq all_block_list (vl-remove-if-not 'snvalid all_block_list))) ;_ end of updatelist
        (updatelist "fixblock" (setq fix_block_list (vl-remove-if-not 'snvalid fix_block_list))) ;_ end of updatelist
      ) ;_ end of progn
      (progn
        (updatelist "allblock" all_block_list)
        (updatelist "fixblock" fix_block_list)
      ) ;_ end of progn
    ) ;_ end of if
  ) ;_ end of defun _move_ux
  
  (defun sync2 ( / х s) ;лок. функция в (bg:blfixdialog)
    (setq fix_block_list
     (ACAD_STRLSORT
      (vl-remove-if-not 
      '(lambda(x) (or (and (bg:bitset opt 2048) ;;;Unnamed
                           (wcmatch x "`*U*")
                      )
                      (snvalid x)
                  ) ;or
        ) ;lambda                   
         ((lambda (s / d r)
               (while (setq d (tblnext s (null d)))
                 (setq r (cons (cdr (assoc 2 d)) r))
                )
          ) "block" )  
       );vl-remove-if-not
      ); ACAD_STRLSORT
     ) ;setq
     (updatelist "allblock" (setq all_block_list nil))
     (updatelist "fixblock" fix_block_list)
     (set_tile "fixblock" "0")
  ) ;defun sync2

  (defun move_to ( Fromlst Tolst indexlist / i tmp ) ;лок. функция в (bg:blfixdialog)
;;;    (setq Fromlst all_block_list)
;;;    (setq Tolst fix_block_list)
;;;    (setq indexlist '(0 1 2 3 4))
    (setq i -1 tmp nil)
    (repeat (length Fromlst)
      (if (vl-position (setq i (1+ i)) indexlist)
        (if (not (vl-position (nth i Fromlst) Tolst))
          (setq Tolst (cons (nth i Fromlst) Tolst))
          )
        (setq tmp (cons (nth i Fromlst) tmp))
        )
    ) ;repeat
    (list (ACAD_STRLSORT(reverse tmp))(ACAD_STRLSORT(reverse Tolst)))
  ) ;defun move_to
  
  (defun synclist (key1 key2  / indexlist tmp lst1 lst2 k1 k2) ;лок. функция в (bg:blfixdialog)
    (setq k1 (get_tile key1)
          k2 (get_tile key2)
          indexlist (read (strcat "(" k1 ")"))
          )
    (if (= key1 "allblock")
      (setq lst1 all_block_list lst2 fix_block_list)
      (setq lst2 all_block_list lst1 fix_block_list)
      )
    (setq tmp (move_to lst1 lst2 indexlist))
    (setq lst1 (car tmp) lst2 (cadr tmp))
    (UpdateList key1 lst1)
    (UpdateList key2 lst2)
;;;    (if (<= (apply 'max (read (strcat "(" k1 ")")))(1-(length lst1)))
;;;        (set_tile key1 k1)
;;;         (set_tile key1 "0")
;;;        )
;;;    (if (<= (apply 'max (read (strcat "(" k2 ")")))(1-(length lst2)))
;;;        (set_tile key2 k2)
;;;        (set_tile key2 "0")
;;;        )
    (set_tile key1 k1)(set_tile key2 k2)
    (if (= key1 "allblock")
      (setq all_block_list (car tmp) fix_block_list (cadr tmp))
      (setq all_block_list (cadr tmp) fix_block_list (car tmp))
      )
  ) ;defun synclist
  
  (defun initopt ( ) ;лок. функция в (bg:blfixdialog)
;;;Line Type
     (if (bg:bitset opt 1)(set_tile "o11" "1")(set_tile "o11" "0"))
     (if (bg:bitset opt 2)(set_tile "o12" "1")(set_tile "o12" "0"))
     (if (bg:bitset opt 4)(set_tile "o13" "1")(set_tile "o13" "0"))
;;;COlor
     (if (bg:bitset opt 8) (set_tile "o21" "1")(set_tile "o21" "0"))
     (if (bg:bitset opt 16)(set_tile "o22" "1")(set_tile "o22" "0"))
     (if (bg:bitset opt 32)(set_tile "o23" "1")(set_tile "o23" "0"))
;;;Lineweight
     (if (bg:bitset opt 64) (set_tile "o31" "1")(set_tile "o31" "0"))
     (if (bg:bitset opt 128)(set_tile "o32" "1")(set_tile "o32" "0"))
     (if (bg:bitset opt 256)(set_tile "o33" "1")(set_tile "o33" "0"))
;;;Layer 0
     (if (bg:bitset opt 512)(set_tile "layer" "1")(set_tile "layer" "0"))
;;;Pline width
     (if (bg:bitset opt 1024)(set_tile "plw" "1")(set_tile "plw" "0"))
;;; Unnamed
    (if (bg:bitset opt 2048)(set_tile "ux" "1")(set_tile "ux" "0"))
;;; Lock layer
    (if (bg:bitset opt 4096)(set_tile "lock" "1")(set_tile "lock" "0"))
    (if (bg:bitset opt 8192)(set_tile "su" "1")(set_tile "su" "0"))
    (if (bg:bitset opt 16384)(set_tile "ae" "1")(set_tile "ae" "0"))
    
  );defun initopt
 
  ;LA ;(defun _GetSavePath ( / tmp ) ;лок. функция в (bg:blfixdialog) - перенесла ниже в глоб. функцию (la:GetSavePath)

  (defun getopt ( / tmp) ;лок. функция в (bg:blfixdialog) ;LA должно работать под Nc 
           (+
            (if (= (get_tile "o11") "1") 1 0)
            (if (= (get_tile "o12") "1") 2 0)
            (if (= (get_tile "o13") "1") 4 0)
            
            (if (= (get_tile "o21") "1") 8 0)
            (if (= (get_tile "o22") "1") 16 0)
            (if (= (get_tile "o23") "1") 32 0)
            
            (if (= (get_tile "o31") "1") 64 0)
            (if (= (get_tile "o32") "1") 128 0)
            (if (= (get_tile "o33") "1") 256 0)
	    
            (if (= (get_tile "o41") "1") 32768 0)
            (if (= (get_tile "o42") "1") 65536 0)
            (if (= (get_tile "o43") "1") 0  0) ;_131072

            (if (= (get_tile "layer") "1") 512 0)
            (if (= (get_tile "plw") "1") 1024 0)
            (if (= (get_tile "ux") "1") 2048 0)
            (if (= (get_tile "lock") "1") 4096 0)
            
            (if (= (get_tile "su") "1") 8192 0)
            (if (= (get_tile "ae") "1") 16384 0)
            )
  ) ;getopt
  (defun UpdateList ( key lst ) ;лок. функция в (bg:blfixdialog) ;LA должна работать

    ;; This function updates the list_box associated with the specified key
    ;; using the contents of the supplied lst

    (start_list key)
    (mapcar 'add_list lst)
    (end_list)
  ) ;defun UpdateList 
  (defun _WriteDcl (fname / ofile) ;лок. функция в (bg:blfixdialog) ;LA диалог вызывается, срабатывает под Nc
    ;(setq IsRus (= (getvar "DWGCODEPAGE") "ANSI_1251")) ;LA
    (cond
      ((findfile fname))
      ((setq ofile (open fname "w"))

       (foreach line
                (list
                  (strcat "//---------------------=={ BgBlFix.dcl v."(bg:ver)" }==--------------------//")
                  "//                                                            //"
                  "//  Dialog Definition file for use in conjunction with        //"
                  "//  Bgtools.lsp                                               //"
                  "//------------------------------------------------------------//"
                  "//  Author: Vladimir Azarko                                   //"
                  "//------------------------------------------------------------//"
                  "FIXBLOCK : dialog {label=\"FIXBLOCK\";key = \"tile\";"
(strcat ":row{:boxed_column {label=" (if IsRus "\"Все блоки\"" "\"All block list\"") ";")
":list_box {width= 31;height= 26;multiple_select = true ;key = \"allblock\";}}"
":column{fixed_width=true;alignment=centered;:spacer{width=0;height=5;}"
":button {key = \"b1\";label = \"---->\";fixed_width=true;alignment=centered;}"
":button {key = \"b2\";label = \"<----\";fixed_width=true;alignment=centered;}"
":button {key = \"b3\";label = \">>>\";fixed_width=true;alignment=centered;}"
":button {key = \"b4\";label = \"<<<\";fixed_width=true;alignment=centered;}"
(strcat ":row{:button {key = \"select\";label =" (if IsRus "\"Выбор >\"" "\"Select >\"") ";fixed_width = true;alignment = centered;height=3;}}")
":spacer{width=0;height=5;}}"
(strcat ":boxed_column{label=" (if IsRus "\"Блоки для нормализации\"" "\"Fix block list\"") ";:list_box{width=31;height=26;multiple_select=true;key=\"fixblock\";}}}")
(strcat "spacer_1;:boxed_row{label=" (if IsRus "\"Опции\"" "\"Options\"") ";" ":boxed_row{label=\"\";fixed_width=true;alignment=left;:column{")
(strcat ":row{label=\"\";fixed_width=true;alignment=left;:text{label=" (if IsRus "\"    Типлинии\"" "\"    LineType\"") ";}}")
(strcat ":row{label=\"\";fixed_width=true;alignment=left;:text{label=" (if IsRus "\"    Цвет\"" "\"    Color\"") ";}}")
(strcat ":row{label=\"\";fixed_width=true;alignment=left;:text{label=" (if IsRus "\"    Вес\"" "\"    LineWeight\"") ";}}")
;;;(if (zerop (getvar "PSTYLEMODE"))
  (strcat ":row{label=\"\";fixed_width=true;alignment=left;:text{label="(if IsRus "\"    Стиль печати\"" "\"    Plot style\"") ";}}")
;;;""
;;;  )
"}:column{:row{label=\"\";fixed_width=true;alignment=left;"
(strcat ":radio_button {key=\"o11\";label=" (if IsRus "\"поблоку\"" "\"byblock\"") ";value=\"1\";}")
(strcat ":radio_button {key=\"o12\";label=" (if IsRus "\"послою\"" "\"bylayer\"") ";value=\"0\";}")
(strcat ":radio_button {key=\"o13\";label="(if IsRus "\"не менять\"" "\"skip\"")";value=\"0\";}")
"}:row{fixed_width=true;alignment=left;"
(strcat ":radio_button {key=\"o21\";label=" (if IsRus "\"поблоку\"" "\"byblock\"") ";value=\"1\";}")
(strcat ":radio_button {key=\"o22\";label=" (if IsRus "\"послою\"" "\"bylayer\"") ";value=\"0\";}")
(strcat ":radio_button {key=\"o23\";label="(if IsRus "\"не менять\"" "\"skip\"")";value=\"0\";}}")
":row{label=\"\";fixed_width=true;alignment=left;"
(strcat ":radio_button {key=\"o31\";label=" (if IsRus "\"поблоку\"" "\"byblock\"") ";value=\"1\";}")
(strcat ":radio_button {key=\"o32\";label=" (if IsRus "\"послою\"" "\"bylayer\"") ";value=\"0\";}")
(strcat ":radio_button {key=\"o33\";label="(if IsRus "\"не менять\"" "\"skip\"")";value=\"0\";}")
"}"
;;;(if (zerop (getvar "PSTYLEMODE"))
;;;  (strcat
":row{label=\"\";fixed_width=true;alignment=left;"
(strcat ":radio_button {key=\"o41\";label=" (if IsRus "\"поблоку\"" "\"byblock\"") ";value=\"1\";}")
(strcat ":radio_button {key=\"o42\";label=" (if IsRus "\"послою\"" "\"bylayer\"") ";value=\"0\";}")
(strcat ":radio_button {key=\"o43\";label="(if IsRus "\"не менять\"" "\"skip\"")";value=\"0\";}")
"}"
;;;		  );_strcat
;;;  ""
;;;  )
"}}spacer_1;:boxed_column{spacer_1;"
(strcat ":toggle {key = \"layer\"; label=" (if IsRus "\"Слой на \\\"0\\\"\"" "\"Layer to \\\"0\\\"\"") ";}")
"spacer_1;"
(strcat ":toggle{key=\"plw\";label=" (if IsRus "\"Ширина полилиний=0\"" "\"Pline width=0\"") ";}")
"spacer_1;"                  
(strcat ":toggle{key=\"ux\";label=" (if IsRus "\"Включая неименованные (*U)\"" "\"Use unnamed (*U)\"") ";}")
"spacer_1;}}"
":column{"
(strcat ":toggle{key=\"lock\";label=\"" (if IsRus "Игнорировать заблокированные слои" "Ignore locked layers") "\";}")
(strcat ":toggle{key=\"su\";label=\"" (if IsRus "Установить одинаковые масштабы" "Scale uniformly") "\";}")
(strcat ":toggle{key=\"ae\";label=\"" (if IsRus "Разрешить расчленение" "Allow exploding") "\";}")                  
"}"                  
 "spacer_1;ok_cancel;}"
  ) ;list
         (write-line line ofile)
       ) ;_ end of foreach
       (setq ofile (close ofile))
       (findfile fname)
      )
    ) ;_ end of cond
  ) ;_defun
          
  (defun selectb ( / ss i lst bn) ;лок. функция в (bg:blfixdialog)
    (if (setq ss (ssget "_:L" '((0 . "INSERT"))))
      (setq i (sslength ss))
      (setq i 0)
    )
    (setq lst fix_block_list)
    (repeat i  ;_ end setq
         (setq bn (bg:block-get-name (ssname ss (setq i(1- i)))))
         (if (not (VL-POSITION bn lst))(setq lst (cons bn lst)))
         ) ;
    (setq fix_block_list lst)
    (mapcar '(lambda (x)(setq all_block_list (vl-remove x all_block_list))) fix_block_list)
  ) ;defun selectb
   ;;=== End func
  (setq Express
    (and (vl-position "acetutil.arx" (arx)) ;LA не cработает под Nc, т.к. нет списка загруженных ObjectARX applications
         (not(vl-catch-all-error-p (vl-catch-all-apply
          (function (lambda nil (acet-sys-shift-down)))
         )  )                      )
    ) ;and
  );setq ;LA всегда Express=nil под Nc
  (if (not (vl-file-directory-p (setq what (la:GetSavePath)))) ;LA
    (progn
     (cond
       (Express (acet-ui-message "Save Path not Valid" "Warning" 16)) ;LA под Nc всегда nil
       (t (alert ;princ ; LA
           (if IsRus ;LA русская кодовая страница
              "\nОшибка. Не найден путь для сохранения "
              "\n** Save Path not Valid **")
        ) )
        
      )
    (exit)
    ) ;progn
  ) ;if
 
  (setq dcl (strcat what "\\BGBlFix_V" (bg:ver) ".dcl"))
  (setq what nil opt 3657)
;;;(setq what nil opt 30281)
  
  (_WriteDCL dcl)  ;
  (if (not (and (setq dcl (findfile dcl))    ;; Check for DCL file
                (< 0 (setq dch (load_dialog dcl)))  ;; Attempt to load it if found
      )    )  
      (cond
        (Express
          (acet-ui-message "DCL File not found" "Warning" 16)
        )
        (t (alert ;  (princ ;LA
         (if IsRus ;LA русская кодовая страница
              "\nОшибка. Не найден DCL-файл "
              "\n** DCL File not found **")
        )  )
      );cond
      (setq what 3)
  ) ;if
  (sync1)
  (while (and what (> what 2))
   (cond
    ((not (new_dialog "FIXBLOCK" dch
       ; "" (cond ( *screenpoint* ) ( '(-1 -1) )) ;LA не поддерживается в Nc 21.x
       ))
    
     ;    (new_dialog dlgname dcl_id [action [screen-pt]])
      ;; If our global variable *screenpoint* has a value it will be
      ;; used to position the dialog, else the default (-1 -1) will be
      ;; used to center the dialog on screen.

      ;; Should the dialog definition not exist, we unload the dialog
      ;; file from memory and inform the user:
                                             
      (setq dch (unload_dialog dch))
      (princ (if IsRus "\n** Диалог не удалось загрузить **" "\n** Dialog could not be Loaded **"))
    )
    (t
       (initopt)
       (updatelist "allblock" all_block_list)
       (updatelist "fixblock" fix_block_list)
       (set_tile "fixblock" "0")
       (set_tile "allblock" "0")
      (set_tile "tile" (strcat "BGBLFIX v." (bg:ver)))
      (action_tile "accept" "(setq opt (getopt) *screenpoint* (done_dialog 1))")
      (action_tile "b1" "(synclist \"allblock\" \"fixblock\")")
      (action_tile "b2" "(synclist \"fixblock\" \"allblock\")")
      (action_tile "b3" "(sync2)")
      (action_tile "b4" "(sync1)")
      (action_tile "select" "(setq opt (getopt) *screenpoint* (done_dialog 4))")
      (action_tile "ux" "(_move_ux)")
     (if (zerop (getvar "PSTYLEMODE"))
       (progn
	 (mode_tile "o41" 0)
	 (mode_tile "o42" 0)
	 (mode_tile "o43" 0)
	 )
       (progn
	 (mode_tile "o41" 1)
	 (mode_tile "o42" 1)
	 (mode_tile "o43" 1)
	 )
       )
      (setq what (start_dialog))
      (cond ((= what 4)
             (selectb)
             (updatelist "allblock" all_block_list)
             (updatelist "fixblock" fix_block_list)
             )
            ((= what 1)
;;;             (princ "\nFixblock= ")
;;;             (princ fix_block_list)
;;;             (princ "\nOptions = ")
;;;             (princ opt)(princ "\n")
             );;;Accept
             (t (setq what nil fix_block_list nil opt nil))
            )
    )
  );_cond
 ) ;_while what
  (if fix_block_list (cons opt fix_block_list))
) ;defun bg:blfixdialog 

 (progn ;LA скрыть примеры bg:bitset
;;;		;;;Line Type
;;;		     (if (bg:bitset opt 1)(set_tile "o11" "1")(set_tile "o11" "0"))
;;;		     (if (bg:bitset opt 2)(set_tile "o12" "1")(set_tile "o12" "0"))
;;;		     (if (bg:bitset opt 4)(set_tile "o13" "1")(set_tile "o13" "0"))
;;;		;;;COlor
;;;		     (if (bg:bitset opt 8) (set_tile "o21" "1")(set_tile "o21" "0"))
;;;		     (if (bg:bitset opt 16)(set_tile "o22" "1")(set_tile "o22" "0"))
;;;		     (if (bg:bitset opt 32)(set_tile "o23" "1")(set_tile "o23" "0"))
;;;		;;;Lineweight
;;;		     (if (bg:bitset opt 64) (set_tile "o31" "1")(set_tile "o31" "0"))
;;;		     (if (bg:bitset opt 128)(set_tile "o32" "1")(set_tile "o32" "0"))
;;;		     (if (bg:bitset opt 256)(set_tile "o33" "1")(set_tile "o33" "0"))
;;;		;;;Layer 0
;;;		     (if (bg:bitset opt 512)(set_tile "layer" "1")(set_tile "layer" "0"))
;;;		;;;Pline width
;;;		     (if (bg:bitset opt 1024)(set_tile "plw" "1")(set_tile "plw" "0"))
;;;		;;; Unnamed
;;;		    (if (bg:bitset opt 2048)(set_tile "ux" "1")(set_tile "ux" "0"))
 ) ;LA
;; LA  (setq lst (bg:blfixdialog))(bg:blfix lst)
(defun bg:blfix ( lst / cnt adoc opt ss cnta locklay bobj) ;LA Работает под Nc 22.0
  ;;; lst - list, return (setq lst (bg:blfixdialog)) lst=(option "DKL1" "BLK2" "BLK3" ... )
  ;;; locklay - t -unlock lay nil - not
  (if IsTest (progn (princ "\n1 bg:blfix lst = ")(princ lst))) ;LA
  (setq cnt 0
        opt (car lst)
        lst (cdr lst)
  )
  (setq locklay (bg:bitset opt 4096))
  (and locklay (bg:layer-status-save))
  (setq adoc (vla-get-activedocument (vlax-get-acad-object)))
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark adoc)
  ) ;LA
  ;(bg:progress-init "FIX Block Definition " (length lst)) ;LA
  (princ (if IsRus "Исправить определение блока ... " "FIX Block Definition... ")) (princ (length lst)) ;LA
  (foreach bname lst
    ;(bg:progress ;LA
    (setq cnt (1+ cnt)) ;) ;LA
    (vlax-for sub_item (setq bobj (vla-item (vla-get-blocks adoc) bname))
     (if (vlax-write-enabled-p sub_item) ;LA вынесла выше повторения. Дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
      (progn ; LA
       (cond
        ((bg:bitset opt 1)  ;;_Line type byblock
        ; (if (vlax-write-enabled-p sub_item) ;LA
           (vla-put-linetype sub_item "ByBlock")
        ; ) ;LA
        )
        ((bg:bitset opt 2)  ;;_Line type bylayer
        ; (if (vlax-write-enabled-p sub_item) ;LA
         (vla-put-linetype sub_item "byLayer")
         ; ) ;LA
         )
        (t nil)
      ) ;cond
       (cond
        ((bg:bitset opt 8)  ;;_Color type byblock
        ; (if (vlax-write-enabled-p sub_item) ;LA
           (vla-put-color sub_item acByBlock)
         ;  ) ;LA
         )
        ((bg:bitset opt 16)  ;;_Color type bylayer
         ;(if (vlax-write-enabled-p sub_item) ;LA
           (vla-put-color sub_item acByLayer)
          ; ) ;LA
         )
        (t nil)
       ) ;cond
       (cond
        ((bg:bitset opt 64)  ;;_LineWeigth type byblock
         ;(if (vlax-write-enabled-p sub_item) ;LA
           (vla-put-LineWeight sub_item aclnwtbyblock)
         ;  ) ;LA
         )
        ((bg:bitset opt 128)  ;;_LineWeigth type bylayer
         ;(if (vlax-write-enabled-p sub_item) ;LA
           (vla-put-LineWeight sub_item acLnWtByLayer)
         ; ) ;LA
         )
        (t nil)
       ) ;cond
       (if (zerop (getvar "PSTYLEMODE"))
        (cond ;_32768
         ((bg:bitset opt 32768)  ;;_Plot style type byblock
        ; (if (vlax-write-enabled-p sub_item) ;LA
           (vla-put-PlotStyleName sub_item "ByBlock")
         ;  ) ;LA
         )
         ((bg:bitset opt 65536)  ;;_Plot style type bylayer
        ; (if (vlax-write-enabled-p sub_item) ;LA
           (vla-put-PlotStyleName sub_item "byLayer")
         ;  ) ;LA
         )
         (t nil)
        );cond
	     );if
       (if (bg:bitset opt 512)  ;;_Layer to 0
         ; (if (vlax-write-enabled-p sub_item) ;LA
            (vla-put-Layer sub_item "0")
         ; ) ;LA
       )
     )) ;LA progn if sub_item
     (if (and (bg:bitset opt 1024)
              (vlax-property-available-p sub_item "ConstantWidth"));_ Pline width
          (vl-catch-all-apply
           '(lambda ()
              (vla-put-ConstantWidth sub_item 0.)
              ) ;_ end of lambda
          ) ;_ end of vl-catch-all-apply
     ) ;if
      (if (and (bg:bitset opt 8192)
               (eq (vla-get-ObjectName sub_item) "AcDbBlockReference"));_ Scale Uniformly
         (vl-catch-all-apply
           '(lambda ()
              (vla-put-XScaleFactor sub_item 1)
              (vla-put-YScaleFactor sub_item 1)
              (vla-put-ZScaleFactor sub_item 1)
              ) ;_ end of lambda
         ) ;_ end of vl-catch-all-apply
      ) ;if
     
    );vlax-for 
    (if (bg:bitset opt 16384)  ;;_Allow expolding
        (vla-put-Explodable bobj :vlax-true)
      ;;;(vla-put-Explodable bobj :vlax-false)
    );if
  ) ;foreach
  ;(bg:progress-clear) ;LA
  (if (setq ss (ssget "_X" (list (cons 0 "INSERT")(cons 66 1)))) ;;;Fix attribute
    (progn
      (setq cnta 0)
      ;(bg:progress-init "FIX Attribute " (sslength ss));LA
      (print "FIX Attribute... ")(print (sslength ss)) ;LA
      (foreach blk 
       (mapcar (function vlax-ename->vla-object) 
        (vl-remove-if (function listp)
	                    (mapcar (function cadr) (ssnamex ss))
	     ))
       ; (bg:progress (setq cnta (1+ cnta))) ;LA
       (setq cnta (1+ cnta)) ;LA
       (if (vl-position (bg:block-get-name blk) lst)
        (foreach at (append (vlax-invoke blk 'GETATTRIBUTES)
                            (vlax-invoke blk 'GETCONSTANTATTRIBUTES)) ;append
         (if (vlax-write-enabled-p at);LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega                   
          (progn ;LA вынесла проверку выше
           (cond
          ((bg:bitset opt 1)  ;;_Line type byblock
           ;(if (vlax-write-enabled-p at) ;LA
               (vla-put-linetype at "ByBlock")
           ;) ;if ;LA
          )
          ((bg:bitset opt 2)  ;;_Line type bylayer
           ;(if (vlax-write-enabled-p at) ;LA
               (vla-put-linetype at "byLayer")
           ;) ;if ;LA
          )
         (t nil)
        ) ;cond
           (cond
          ((bg:bitset opt 8)  ;;_Color t 
           ;(if (vlax-write-enabled-p at) ;LA
               (vla-put-color at acByBlock) 
           ;) ;if ;LA
          )
          ((bg:bitset opt 16)  ;;_Color type bylayer
           ;(if (vlax-write-enabled-p at) ;LA
               (vla-put-color at acByLayer)
           ;) ;if ;LA
          )
          (t nil)
         ) ;cond
           (cond
          ((bg:bitset opt 64)  ;;_LineWeigth type byblock
          ; (if (vlax-write-enabled-p at) ;LA
               (vla-put-LineWeight at aclnwtbyblock)
          ; ) ;if ;LA
          )
          ((bg:bitset opt 128)  ;;_LineWeigth type bylayer
          ; (if (vlax-write-enabled-p at) ;LA
               (vla-put-LineWeight at acLnWtByLayer)
          ; ) ;if ;LA
          )
          (t nil)
         ) ;cond
           (if (bg:bitset opt 512)  ;;_Layer to 0
            ; (if (vlax-write-enabled-p at) ;LA
                 (vla-put-Layer at "0")
            ; ) ;if ;LA
           )  ;if 
         ));LA progn if          
        );foreach       
       ) ;if
      );foreach blk
        ;(bg:progress-clear) ;LA
    );progn
  );if
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-endundomark adoc)
  );LA
  (and locklay (bg:layer-status-restore))
  (vla-regen adoc acallviewports)
  (princ (if isRus
             (strcat "\nИзменено " (itoa cnt) " блоков")
             (strcat "\nFixed " (itoa cnt) " blocks")
         )
  )
  (princ)
);defun bg:blfix

;;BGResetXRef - Сброс настроек слоев выбранных внешних ссылок на установленные в исходном файле
(defun c:BGResetXRef ( / *error* _Settings _GetDocumentObject ;LA работает под Nc 22.0
                         acapp acdoc acdocs acver dbxdoc dcl def han inc lst props sel tile tiles xrf xreflst )
 (progn ;LA
;;-------------------=={ Reset XRef Layers }==--------------------------;;
;; http://www.theswamp.org/index.php?topic=40132.0                      ;;
;;                                                                      ;;
;;;                                                                     ;;
;;  This program enables the user to reset all or specific layer        ;;
;;  properties of xref dependent layers to match the properties         ;;
;;  present in the xref source drawing file.                            ;;
;;                                                                      ;;
;;  Upon starting the program, the user is prompted to select an xref   ;;
;;  whose layers are to be reset. Following a valid selection, the      ;;
;;  properties of all layers dependent on the selected xref are reset   ;;
;;  to match the values found in the source drawing for the selected    ;;
;;  xref.                                                               ;;
;;                                                                      ;;
;;  From the selection prompt, the user may also choose 'Multiple',     ;;
;;  'All', or 'Settings'.                                               ;;
;;                                                                      ;;
;;  If 'Multiple' is selected, the user may select several xrefs using  ;;
;;  the standard selection interface (e.g. via window selection).       ;;
;;                                                                      ;;
;;  If 'All' is selected, the layer properties of every xref found in   ;;
;;  the active drawing is reset to match the original values found in   ;;
;;  the respective source drawings.                                     ;;
;;                                                                      ;;
;;  Finally, if the 'Settings' option is selected, a dialog interface   ;;
;;  is displayed allowing the user to choose which layer properties     ;;
;;  are to be reset.                                                    ;;
;;                                                                      ;;
;;  The user may select multiple properties to be reset from: Colour,   ;;
;;  Linetype, Lineweight, Plot, Plot Style, Frozen in Viewports, On,    ;;
;;  Locked, Frozen, & Description.                                      ;;
;;                                                                      ;;
;;----------------------------------------------------------------------;;
;;  Author:  Lee Mac, Copyright © 2014  -  www.lee-mac.com              ;;
;;----------------------------------------------------------------------;;
;;  Version 1.0    -    2011-11-19                                      ;;
;;                                                                      ;;
;;  - First release.                                                    ;;
;;----------------------------------------------------------------------;;
;;  Version 1.1    -    2011-11-27                                      ;;
;;                                                                      ;;
;;  - Added code to search for XRef Source File in working directory &  ;;
;;    support directories if not found at XRef Path.                    ;;
;;----------------------------------------------------------------------;;
;;  Version 1.2    -    2014-04-13                                      ;;
;;                                                                      ;;
;;  - Program entirely rewritten.                                       ;;
;;  - Modified program to account for layers whose colour property      ;;
;;    uses a True Colour or Colour Book colour.                         ;;
;;----------------------------------------------------------------------;;
 ) ;LA
    (defun *error* ( msg )
        (if (< 0 han) (setq han (unload_dialog han)))
        (if (and dcl  (setq dcl (findfile dcl))) (vl-file-delete dcl))
        (if (and dbxdoc (not (vlax-object-released-p dbxdoc))) (vlax-release-object dbxdoc))
        (if (not (wcmatch (strcase msg) "*BREAK,*CANCEL*,*EXIT*"))
            (princ (strcat "\nError: " msg))
        )
        (princ)
    ) ;defun *error*

    (defun _Settings ( code / bit dcl han tmp )                    ;лок. ф-ция в c:BGResetXRef
        (cond
            ((not (and (setq dcl (vl-filename-mktemp nil nil ".dcl"))
                       (setq tmp (open dcl "w"))
                       (progn
                            (foreach line
                              (if IsRus ;LA
                               '(
                                    "rxl : dialog { label = \"Настройки\"; spacer;"
                                    "    : boxed_column { label = \"Свойства для восстановления\"; width = 65.0; fixed_width = true; alignment = centered; spacer;"
                                    "        : row { alignment = centered; spacer; "
                                    "            : column {"
                                    "                : toggle { key = \"colour\";     label = \"Цвет\"; }"
                                    "                : toggle { key = \"linetype\";   label = \"Тип линии\"; }"
                                    "                : toggle { key = \"lineweight\"; label = \"Вес линии\"; }"
                                    "            }"
                                    "            : column {"
                                    "                : toggle { key = \"plot\";      label = \"Печать\"; }"
                                    "                : toggle { key = \"plotstyle\"; label = \"Стиль печати\"; }"
                                    "                : toggle { key = \"frozenvp\";  label = \"Заморожен на новых ВЭ\"; }"
                                    "            }"
                                    "            : column {"
                                    "                : toggle { key = \"on\";     label = \"Вкл\"; }"
                                    "                : toggle { key = \"locked\"; label = \"Блокировать\"; }"
                                    "                : toggle { key = \"frozen\"; label = \"Заморозить\"; }"
                                    "            }"
                                    "            : column {"
                                    "                : toggle { key = \"description\"; label = \"Описание\"; }"
                                    "                spacer;"
                                    "                : toggle { key = \"selectall\";   label = \"Выбрать все\"; }"
                                    "            }"
                                    "        }"
                                    "        spacer;"
                                    "    }"
                                    "    spacer; ok_cancel;"
                                    "}"
                                )
                               '(
                                    "rxl : dialog { label = \"Settings\"; spacer;"
                                    "    : boxed_column { label = \"Properties to Reset\"; width = 65.0; fixed_width = true; alignment = centered; spacer;"
                                    "        : row { alignment = centered; spacer; "
                                    "            : column {"
                                    "                : toggle { key = \"colour\";     label = \"Colour\"; }"
                                    "                : toggle { key = \"linetype\";   label = \"Linetype\"; }"
                                    "                : toggle { key = \"lineweight\"; label = \"Lineweight\"; }"
                                    "            }"
                                    "            : column {"
                                    "                : toggle { key = \"plot\";      label = \"Plot\"; }"
                                    "                : toggle { key = \"plotstyle\"; label = \"Plot Style\"; }"
                                    "                : toggle { key = \"frozenvp\";  label = \"Frozen in VP\"; }"
                                    "            }"
                                    "            : column {"
                                    "                : toggle { key = \"on\";     label = \"On\"; }"
                                    "                : toggle { key = \"locked\"; label = \"Locked\"; }"
                                    "                : toggle { key = \"frozen\"; label = \"Frozen\"; }"
                                    "            }"
                                    "            : column {"
                                    "                : toggle { key = \"description\"; label = \"Description\"; }"
                                    "                spacer;"
                                    "                : toggle { key = \"selectall\";   label = \"Select All\"; }"
                                    "            }"
                                    "        }"
                                    "        spacer;"
                                    "    }"
                                    "    spacer; ok_cancel;"
                                    "}"
                                )
                               )
                               (write-line line tmp)
                            ) ;foreach
                            (setq tmp (close tmp))
                            (while (null (findfile dcl)))
                            (< 0 (setq han (load_dialog dcl)))
                        ) ;progn
                        (new_dialog "rxl" han)
                    ) ;and
                ) ;not
                (princ (if IsRus ;LA
                           "\nОшибка загрузки диалога. " "\nError Loading Dialog. "))
            )
            (t  (setq bit 1
                      tmp code
                )
                (if (= 1023 tmp) (set_tile "selectall" "1"))
                (foreach tile
                    (setq tiles
                       '(
                            "colour"
                            "linetype"
                            "lineweight"
                            "plot"
                            "plotstyle"
                            "frozenvp"
                            "on"
                            "locked"
                            "frozen"
                            "description"
                        )
                    ) ;setq
                    (if (= bit (logand tmp bit))
                        (set_tile tile "1")
                        (set_tile tile "0")
                    )
                    (action_tile tile
                        (strcat
                            "(setq tmp (boole 6 tmp " (itoa bit) "))"
                            "(set_tile \"selectall\" (if (= 1023 tmp) \"1\" \"0\")))"
                        )
                    )
                    (setq bit (lsh bit 1))
                ) ;foreach
                (action_tile "selectall"
                    (strcat
                        "(foreach tile tiles (set_tile tile $value))"
                        "(if (eq \"1\" $value)"
                        "    (setq tmp 1023)"
                        "    (setq tmp 0)"
                        ")"
                    )
                )                        
                (if (= 1 (start_dialog)) (setq code tmp))
            ) ;t
        ) ;cond
        (if (< 0 han) (setq han (unload_dialog han)))
        (if (and dcl  (setq dcl (findfile dcl))) (vl-file-delete dcl))
        code
    );defun _Settings
    
    ;LA не будет работать под Nc < 22 из-за dbxdoc
    (defun _GetDocumentObject ( dbxdoc acdocs xref / path xpath ) ;лок. ф-ция в c:BGResetXRef
        (setq xpath (cdr (assoc 1 (entget (tblobjname "BLOCK" xref)))))
        (cond
            ((null (or (setq path (findfile xpath))  ; 1)
                       (setq path (findfile (strcat (vl-filename-base xpath) ".dwg"))) ; 2)
             ))     
             (princ (if IsRus ;LA
                        (strcat "\nИсходный чертеж " xref "не найден. ")
                        (strcat "\nSource Drawing for " xref " not Found. ")))
             nil
            ) ;null or
            ((cdr (assoc path acdocs))) ;если находится файл по xpath в 1) и 2)
            ((null (vl-catch-all-error-p (vl-catch-all-apply 'vla-open (list dbxdoc path)))) ;открываем внешнюю ссылку
              dbxdoc ;внешняя ссылка - это интерфейсный объект, который открываем и возвращаем
            )
            ((princ (if IsRus ;LA
                        (strcat "\nНе возможно открыть " xref "исходный чертеж. ")
                        (strcat "\nUnable to Open " xref " Source Drawing.")))
              nil
            )
        )
    );defun _GetDocumentObject

    (if (null (setq props (getenv "LMac\\RXLProps")))
        (setq props (+ 1 2 4 8 512))
        (setq props (atoi props))
    ) ;if

    (while (setq def (tblnext "BLOCK" (null def)))
        (if (= 4 (logand 4 (cdr (assoc 70 def))))
            (setq lst (cons "," (cons (cdr (assoc 2 def)) lst)))
        )
    ) ;while

    (cond
        ((null lst)
            (princ (if IsRus ;LA
                        "\В чертеже не найдено внешних ссылок. "
                        "\nNo XRefs found in Drawing. "))
        ) ;(null lst)
        (t
            (setq acapp  (vlax-get-acad-object)
                  acdoc  (vla-get-activedocument acapp)
                  dbxdoc (LM:ObjectDBXDocument acapp) ;LA заменила код ниже
                  ;(vla-GetInterfaceObject acapp
                  ;           (if (< (setq acver (atoi (getvar "ACADVER"))) 16)
                  ;               "ObjectDBX.AxDbDocument"
                  ;               (strcat "ObjectDBX.AxDbDocument." (itoa acver))  ;LA не будет работать под Nc < 22.0
                  ;           )
                  ; )
                  acdocs (vlax-for doc (vla-get-documents acapp)
                             (setq acdocs (cons (cons (vla-get-fullname doc) doc) acdocs))
                         )
            ) ;setq
            (while
                (progn
                    (setvar 'ERRNO 0)
                    (initget "неСколько Все Имя Настройки Multiple All Name Settings _ M A N S M A N S") ;LA
                    (setq sel (entsel
                                (if IsRus ;LA
                                "\nВыберите XRef для сброса настроек или [неСколько/Все/выбор по Имени/Настройки] <Выход>: " ;LA неСколько
                                "\nSelect XRef to Reset or [Multiple/All/select by Name/Settings] <Exit>: "
                                  )
                    ))
                    (cond
                        ((= 7 (getvar 'ERRNO))
                         (princ (if IsRus ;LA
                                   "\nНеверно, повторите выбор." "\nMissed, try again."))
                        )
                        ((null sel) nil )
                        ((eq "M" sel) ;LA
                         (setvar 'NOMUTT 1)
                         (princ (if IsRus ;LA
                                   "\nВыберите XRefs для сброса настроек <Выход>: "
                                   "\nSelect XRefs to Reset <Exit>: "
                                )
                         )
                         (setq sel (vl-catch-all-apply 'ssget
                                    (list (list '(0 . "INSERT") (cons 2 (apply 'strcat (cdr lst))))) 
                                   )
                         )
                         (setvar 'NOMUTT 0)
                         (if (and sel (not (vl-catch-all-error-p sel)))
                             (repeat (setq inc (sslength sel))
                              (LM:ResetXRefLayers
                                (setq xrf (cdr (assoc 2 (entget (ssname sel (setq inc (1- inc)))))))
                                (_GetDocumentObject dbxdoc acdocs xrf) ;LA не будет работать под Nc <22 из-за  dbxdoc
                                acdoc
                                props
                              ) ;LM:ResetXRefLayers
                             ) ;repeat
                         ) ;if
                         nil
                        ) ;"M"
                        ((eq "A" sel) ;LA
                         (while (setq def (tblnext "BLOCK" (null def)))
                           (if (= 4 (logand 4 (cdr (assoc 70 def))))
                               (LM:ResetXRefLayers
                                        (setq xrf (cdr (assoc 2 def)))
                                        (_GetDocumentObject dbxdoc acdocs xrf) ;LA не будет работать под Nc < 22 из-за  dbxdoc
                                        acdoc
                                        props
                                ) ;LM:ResetXRefLayers
                            )
                          ) ;while
                          nil
                        ) ; "A"
                        ((eq "N" sel) ;LA
                         (while (setq def (tblnext "BLOCK" (null def)))
                           (if (= 4 (logand 4 (cdr (assoc 70 def))))
                               (setq xreflst (cons (cdr (assoc 2 def)) xreflst))
                           )
                         ) ;while
                         (foreach xrf 
                            (_dwgru-get-user-dcl (if IsRus ;LA
                                                     "Выберите ссылки " "Select XRefs")
                                                 (acad_strlsort xreflst) t)
                            (LM:ResetXRefLayers
                                        xrf
                                        (_GetDocumentObject dbxdoc acdocs xrf) ;LA не будет работать под Nc < 22 из-за  dbxdoc
                                        acdoc
                                        props
                            )
                          )
                          nil
                        ) ;"N"
                        
                        ((eq "S" sel)
                            (setq props (_Settings props))
                        ) ;"S"
                        ((vl-consp sel)
                            (if (eq "INSERT" (cdr (assoc 0 (setq sel (entget (car sel))))))
                                (if (= 4 (logand 4 (cdr (assoc 70 (tblsearch "BLOCK" (cdr (assoc 2 sel)))))))
                                    (LM:ResetXRefLayers
                                        (setq xrf (cdr (assoc 2 sel)))
                                        (_GetDocumentObject dbxdoc acdocs xrf)  ;LA не будет работать под Nc < 22 из-за  dbxdoc
                                        acdoc
                                        props
                                    )
                                    (princ (if IsRus ;LA
                                              "\nВыбраный блок неявляется внешней ссылкой. "
                                              "\nSelected Block is not an XRef."))
                                ) ;if
                                (princ (if  IsRus ;LA
                                             "\nВыбран недопустимый объект. "
                                             "\nInvalid Object Selected."))
                            ) ;if
                        ) ;(vl-consp sel)
                    ) ;cond
                ) ;progn
            ) ;while
            (vla-regen acdoc acallviewports)
            (vlax-release-object dbxdoc)
        ) ;t
    )
    (setenv "LMac\\RXLProps" (itoa props))
    (princ)
) ;defun c:BGResetXRef
(defun LM:ResetXRefLayers ( xref xrdoc acdoc props / _GetLayerProperties ass bit data name pos value xdef ) ;используется в (C:BGResetXRef)
;;;  Lee Mac 2011 www.lee-mac.com
    (defun _GetLayerProperties ( doc props / bit lst data ); лок.функция в LM:ResetXRefLayers
        (vlax-for layer (vla-get-layers doc)
            (setq bit 1
                  lst nil
            )
            (foreach prop
               '(
                    color
                    linetype
                    lineweight
                    plottable
                    plotstylename
                    viewportdefault
                    layeron
                    lock
                    freeze
                    description
                )
                (if
                    (and
                        (vlax-property-available-p layer prop)
                        (= bit (logand bit props))
                    )
                    (setq lst (cons (cons bit (vlax-get-property layer prop)) lst))
                )
                (setq bit (lsh bit 1))
            ) ;foreach
            (setq data (cons (cons (strcase (vla-get-name layer)) (reverse lst)) data))
        ) ;vlax-for
        data
    ) ;defun _GetLayerProperties
    
    (cond
        ((null xrdoc)  nil)
        ((vl-catch-all-error-p (setq xdef (vl-catch-all-apply 'vla-item (list (vla-get-blocks acdoc) xref))))
         (princ (if IsRus ;LA
                    "\nВнешняя ссылка отсутствует на чертеже."
                    "\nXRef not present in Drawing."))
         nil
        )
        ((setq data (_GetLayerProperties xrdoc props))
         (vla-reload xdef)
         (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                   (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
                (vla-startundomark acdoc)
         );LA
         (vlax-for layer (vla-get-layers acdoc)
          (setq bit 1)
          (if (and (setq pos (vl-string-position 124 (setq name (strcase (vla-get-name layer)))))
                   (eq (strcase xref) (substr name 1 pos))
                   (setq ass (cdr (assoc (substr name (+ 2 pos)) data)))
              )
              (foreach prop
                       '(   color
                            linetype
                            lineweight
                            plottable
                            plotstylename
                            viewportdefault
                            layeron
                            lock
                            freeze
                            description
                        )
                        (if (and(vlax-property-available-p layer prop t)
                                (= bit (logand bit props))
                                (setq value (cdr (assoc bit ass)))
                            ) ;and
                            (if (and (= 2 bit) (not (eq "CONTINUOUS" (strcase value))))
                                (vl-catch-all-apply 'vlax-put-property (list layer prop (strcat xref "|" value)))
                                (vl-catch-all-apply 'vlax-put-property (list layer prop value))
                            ) ;if
                        ) ;if
                        (setq bit (lsh bit 1))
              ) ;foreach
             ) ;if
            ) ;vlax-for layer
            (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
                  (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
                (vla-endundomark acdoc)
            );LA
            t
        )
    ) ;cond
) ;defun LM:ResetXRefLayers



(defun c:BGAll2RGB ( / accm c e i s _UpdateTrueColor _UpdateTrueColorNested ) ;LA работает под Nc 21.0, 22.0 но в свойствах не показывает RGB
;;; All to RGB  -  Lee Mac  -  www.lee-mac.com
;;; Converts the ACI colours of all entities to the RGB TrueColor equivalent
;;;http://www.cadtutor.net/forum/showthread.php?65645-Convert-from-index-colours-to-true-colours&s=b86c725f0e1c2793ae84f0c7babc7f59
  (defun _UpdateTrueColor ( e c) ;лок. функция в BGAll2RGB, LA не всегда срабатывает
    (if (eq c 7) ;_Black/Wнite
      (vla-SetRGB accm 0 0 0)
      (vla-put-colorindex accm c) ; (setq c 67)
    ) ;if
    (entmod
      (append e (list (cons 420 (LM:RGB->True (vla-get-red   accm)
                                              (vla-get-green accm)
                                              (vla-get-blue  accm)               
    )  )        )     )         ) 
  );defun _UpdateTrueColor
  
  (defun _UpdateTrueColorNested ( e / c) ;лок. функция в BGAll2RGB
;;;  (setq e (car(entsel)))
   (if (and (eq "INSERT" (cdr (assoc 0 e)))
            (setq e (tblobjname "BLOCK" (cdr (assoc 2 e))))
       )
       (while (setq e (entnext e))
        (if (and (setq c (cdr (assoc 62 (entget e))))
                 (not (zerop c))
            )
            (_UpdateTrueColor (entget e) c)
        )
        (if (eq "INSERT" (cdr (assoc 0 (entget e))))
            (_UpdateTrueColorNested (entget e))
        ) ;if
       ) ;while
   ) ;if
  ) ;defun _UpdateTrueColorNested
  
  ;----продолжение BGAll2RGB
  (la:ru-error-catch ;LA добавила обработчик ошибок для accm 19.03.2023
   (function (lambda ()  ;; Это действие, в котором может возникнуть ошибка
  ;LA может возникнуть ошибка, если установлено несколько нанокадов
     (setq accm (vla-getinterfaceobject (vlax-get-acad-object)
		            (if (vl-string-search "nano" (vlax-product-key))
		                "OdaX.AcadAcCmColor" ;LA AutoCAD.AcCmColor надо заменять на OdaX.AcadAcCmColor для nanoCAD
		                (strcat "AutoCAD.AcCmColor." (substr (getvar "ACADVER") 1 2)) 
		            )
	   )) ;setq
   ))  
   (function (lambda (x) ;; А здесь действия в случае ошибки
     (princ (if IsRus "\nПредупреждение. OdaX.AcadAcCmColor. Несоответствие версий! "
                        "\nWarning. OdaX.AcadAcCmColor. Version mismatch! "))
     (setq accm nil)
     ;(exit)
   )) ;function
  ) ;la:ru-error-catch ;LA rjytw lj,fdktybz
  
  (if (and (setq s (ssget "_:L")) ;продолжение BGAll2RGB
         accm ;LA ; (setq accm (strcat "AutoCAD.AcCmColor." (substr (getvar 'ACADVER) 1 2))) ;setq
      )  ;and
      (progn
       (repeat (setq i (sslength s))
        (setq e (entget (ssname s (setq i (1- i)))))
        (if IsTest (progn (princ "\nBGAll2RGB e = ")(princ e))) ;(setq Istest T)
        (if (and      (assoc 62 e) ;LA 62 может не быть, если цвет по слою
                 (not (assoc 420 e)))
            (_UpdateTrueColor e (setq c (cdr (assoc 62 e))))   ;LA
        ) ;if
        (_UpdateTrueColorNested e)
       ) ;repeat
       (vlax-release-object accm)
     ) ;progn
  ) ;if
  (vl-cmdf "_regenall")
  (princ)
) ;defun c:BGAll2RGB
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
 );_ while
);_ defun
;;;End Coding Here	

(defun LM:RGB->True ( r g b ) ;LA работает
;; RGB -> True - Lee Mac 2011
;; Args: r,g,b - Red,Green,Blue values

    (+
        (lsh (fix r) 16)
        (lsh (fix g)  8)
        (fix b)
    )
)
(defun bg:truecolor->RGB ( truecolor ) ;LA не используется, только для проверки (LM:RGB->True r g b)
  ;;;USE (BG:truecolor->RGB 8227990 )
 (list
   (logand (lsh truecolor -16) 255) ;; R
   (logand (lsh truecolor -8) 255)  ;; G
   (logand truecolor 255)           ;; B
 )
) ;defun bg:truecolor->RGB
(progn ;LA Скрыть описание команд BGCB, BGRB Copy/Rename Block
;;------------------=={ Copy/Rename Block }==-----------------;;
;;                                                            ;;
;;  Copies or Renames an single selected block reference with ;;
;;  a name specified by the user. The program utilises an     ;;
;;  ObjectDBX Document interface to copy the block definition ;;
;;  of the selected reference, perform the rename operation,  ;;
;;  then copy the renamed definion back to the working        ;;
;;  drawing. 

;; LA Копирует или переименовывает ссылку на одиночный выбранный блок, используя имя, указанное пользователем.
;; Программа использует Интерфейс документа ObjectDBX для копирования определения блока выбранной ссылки.
;; Выполните операцию переименования, затем скопируйте переименованное определение обратно в рабочий чертеж.
 
;;  Program works with Dynamic Blocks & XRefs.                ;;
;; LA Программа работает с динамическими блоками и внешними ссылками. 
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Version 1.3    -    25-08-2011                            ;;
;;------------------------------------------------------------;;
;; url: http://lee-mac.com/copyblock.html                     ;;
;;------------------------------------------------------------;;
) ;LA
(defun c:BGCB nil (RenameBlock   t)) ;копирование блока       ;LA работает под Nc 22.0, кроме дин.блоков
(defun c:BGRB nil (RenameBlock nil)) ;переименование блока    ;LA работает под Nc 22.0, кроме дин.блоков

;;------------------------------------------------------------;;
;(setq IsTest T)(setq IsTest nil)
(defun RenameBlock ( copy / *error* _Name _ReleaseObject acapp acdoc b1 b2 d1 dbdoc df n1 n2 ) ;LA работает под Nc 22.0
;;------------------------------------------------------------;;

  (defun *error* ( msg )
    (_ReleaseObject dbdoc)
    (or (wcmatch (strcase msg) "*BREAK,*CANCEL*,*EXIT*")
        (princ (strcat "\n** Error: " msg " **")))
    (princ)
  )

  (defun _Name ( obj )   ;лок. функция RenameBlock         ;LA должно работать под Nc
    (if (vlax-property-available-p obj 'EffectiveName)
        (vla-get-EffectiveName obj)
        (vla-get-Name obj)
    )
  ) ;defun _Name

  (defun _ReleaseObject ( obj )  ;лок. функция RenameBlock ;LA должно работать под Nc
    (and obj 
         (eq 'VLA-OBJECT (type obj))
         (not (vlax-object-released-p obj))
         (not (vl-catch-all-error-p (vl-catch-all-apply 'vlax-release-object (list obj))))
    ) ;and
  ) ;defun _ReleaseObject
  
;;------------------------------------------------------------;;

  (setq acapp (vlax-get-acad-object)
        acdoc (vla-get-activedocument acapp)
        acblk (vla-get-blocks acdoc)
  ) ;setq
  
  (if(and (zerop(getvar "BLOCKEDITOR"))
          (setq b1 (car (LM:Selectif (strcat (if IsRus ;LA
                                                 "\nВыберите ссылку блока для "
                                                 "\nSelect Block Reference to "
                                             )
                                             (if IsRus ;LA
                                                    (if copy "копии" "переименования")
                                                    (if copy "Copy" "Rename")
                                             )
                                             ": " )
                                     (lambda ( x ) (eq "INSERT" (cdr (assoc 0 (entget (car x))))))
                                     entsel nil
          )         )    ) ;LM:Selectif ;car ;setq ;LA работает кусок под Nc
          (LM:CopyBlockDef
            acdoc 
            (setq dbdoc (LM:ObjectDBXDocument acapp)) ;LA не будет работать под Nc < 22
            (setq n1 (_Name (setq b1 (vlax-ename->vla-object b1))))
            (progn ; name2
             (while (progn
              (setq n2 (getstring t (strcat (if IsRus ;LA
                                                "\nВведите новое имя блока <"
                                                "\nSpecify New Block Name <" )
                                            (setq df ((lambda ( i / b )
                                              (while (tblsearch "BLOCK"(setq b (strcat n1 "_" (itoa (setq i (1+ i)))))))
                                               b );lambda
                                               0
                                            )        ) ;setq
                                            "> : "
              )        )            ) ;strcat ; getstring ;setq
              (cond
                ((eq "" n2) (setq n2 df)  nil )
                ((or (not (snvalid n2)) (tblsearch "BLOCK" n2))
                 (princ (if IsRus ;LA
                            "\nНеверное или Существующее имя блока."
                            "\nBlock Name Invalid or Already Exists."))
                )
              );cond
             ) ;progn
            ) ;while
             n2
            ) ;progn
          ) ;LM:CopyBlockDef
    ) ;and
    (progn
      (if (and (vlax-property-available-p b1 'isDynamicBlock) (eq :vlax-true (vla-get-isDynamicBlock b1)))
        (progn
          (if IsTest (progn (princ "\nRenameBlock 1 b1 = Дин.блок = ")(princ b1)))
          (setq p1 (mapcar 'vla-get-value (vlax-invoke b1 'GetDynamicBlockProperties)))
          (vla-put-name (if copy (setq b1 (vla-copy b1)) b1) n2)
          (mapcar
            (function
              (lambda ( a b )
                (or (eq "ORIGIN" (strcase (vla-get-PropertyName a))) (vla-put-value a b))
              )
            )
            (vlax-invoke b1 'GetDynamicBlockProperties) p1
          ) ;mapcar
        ) ;progn
        (vla-put-name (if copy (setq b1 (vla-copy b1)) b1) n2)
      ) ;if
      (if (eq :vlax-true (vla-get-isxref (setq d1 (vla-item acblk n2))))
        (vla-reload d1)
      ) ;if
      (if copy (sssetfirst nil (ssadd (vlax-vla-object->ename b1))))
    ) ;progn
    (if (not(zerop(getvar "BLOCKEDITOR")))
      (bg:msg-Popup 
        (if IsRus "Внимание" "Attention") ;LA
        (if IsRus ;LA
          "Команда не работает в редакторе блоков!"
          "Command is not working in the Block Editor!"
        )
        16
      ) ;bg:msg-Popup
    ) ;if
  ) ;if
  (_ReleaseObject dbdoc)
  (princ)
) ;defun RenameBlock


(defun LM:CopyBlockDef ( acdoc dbdoc name1 name2 / acblk dbblk b1 b2 ) ;LA не будет работать под Nc < 22.0 из-за dbdoc
;;---------------=={ Copy Block Definition }==----------------;;
;;                                                            ;;
;;  Copies the specified block defintion with new name as     ;;
;;  specified                                                 ;;
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Arguments:                                                ;;
;;  acdoc - Document Object containing Block to copy          ;;
;;  dbdoc - ObjectDBX Document                                ;;
;;  name1 - Name of block definition to copy                  ;;
;;  name2 - Name to be used for copied definition             ;;
;;------------------------------------------------------------;;
;;  Returns: Copied VLA Block Definition Object, else nil     ;;
;;------------------------------------------------------------;;
;;http://www.lee-mac.com/copyblockdefinition.html

  (setq acblk (vla-get-blocks acdoc)
        dbblk (vla-get-blocks dbdoc)
  )               
  (if
    (and
      (setq b1 (LM:GetItem acblk name1))
      (not     (LM:GetItem acblk name2))
      (not(wcmatch name2 "`**")) ;;;Add VVA 2012-03-03
    )
    (progn  
      (vla-CopyObjects acdoc (LM:SafearrayVariant vlax-vbObject (list b1)) dbblk)
      (vla-put-Name (setq b2 (LM:GetItem dbblk name1)) name2)
      (vla-CopyObjects dbdoc (LM:SafearrayVariant vlax-vbObject (list b2)) acblk)
    )
  ) ;if
  (LM:GetItem acblk name2)
) ;defun LM:CopyBlockDef


(defun LM:GetItem ( collection item ) ;LA должно работать под Nc, используется в LM:CopyBlockDef
;;--------------=={ VLA-Collection: Get Item }==--------------;;
;;                                                            ;;
;;  Retrieves the item with index 'item' if present in the    ;;
;;  specified collection, else nil                            ;;
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Arguments:                                                ;;
;;  collection - the VLA Collection Object                    ;;
;;  item       - the index of the item to be retrieved        ;;
;;------------------------------------------------------------;;
;;  Returns:  the VLA Object at the specified index, else nil ;;
;;------------------------------------------------------------;;

  (if (not (vl-catch-all-error-p (setq item (vl-catch-all-apply 'vla-item (list collection item)))))
      item
  )
) ;defun LM:GetItem


(defun LM:ObjectDBXDocument ( acapp / acVer ) ;LA не будет работать под Nc < 22.0
;;-----------------=={ ObjectDBX Document }==-----------------;;
;;                                                            ;;
;;  Retrieves a version specific ObjectDBX Document object    ;;
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Arguments:                                                ;;
;;  acapp - AutoCAD VLA Application Object                    ;;
;;------------------------------------------------------------;;
;;  Returns:  VLA ObjectDBX Document object, else nil         ;;
;;------------------------------------------------------------;;

 ; (vla-GetInterfaceObject acapp
 ;   (if (< (setq acVer (atoi (getvar "ACADVER"))) 16)
 ;     "ObjectDBX.AxDbDocument" (strcat "ObjectDBX.AxDbDocument." (itoa acVer))
 ;   )
 ; )
 ; LA переписала под nanoCAD
   (if IsTest (progn (princ "\n1 LM:ObjectDBXDocument "))) ;LA см. _ObjectDBXDocument - то же самое в других пакетах
    (if (not acapp)(setq acapp (vlax-get-acad-object)))
    (setq acVer (atoi (getvar "ACADVER"))) 
    (if (and (vl-string-search "nano" (vlax-product-key))(< acVer 22 )) ;LA
        (progn (alert (if IsRus "ObjectDBX метод применим \nтолько в nanoCAD версии выше 22.0"
                                "ObjectDBX method applicable\nonly in AutoCAD version > 22.0"))
               (exit))
    ) ;if
    (if (< acVer 15.06)
        (progn (alert (if IsRus "ObjectDBX метод не применим \n в этой AutoCAD версии"
                      "ObjectDBX method not applicable\nin this AutoCAD version"))
               (exit))
    ) ;if 
    (vla-GetInterfaceObject acapp
      (if (<  acVer 16)
          "ObjectDBX.AxDbDocument" 
          (strcat "ObjectDBX.AxDbDocument." (itoa acVer))
    )) ;vla-GetInterfaceObject
  
) ;defun LM:ObjectDBXDocument

;;------------------=={ Safearray Variant }==-----------------;;
;;                                                            ;;
;;  Creates a populated Safearray Variant of a specified      ;;
;;  data type                                                 ;;
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Arguments:                                                ;;
;;  datatype - variant type enum (eg vlax-vbDouble)           ;;
;;  data     - list of static type data                       ;;
;;------------------------------------------------------------;;
;;  Returns:  VLA Variant Object of type specified            ;;
;;------------------------------------------------------------;;

(defun LM:SafearrayVariant ( datatype data / ) ;LA должно работать под Nc; используется в LM:CopyBlockDef
  (vlax-make-variant
    (vlax-safearray-fill (vlax-make-safearray datatype (cons 0 (1- (length data)))) data )
  )
) ;defun LM:SafearrayVariant

(defun LM:SelectIf ( msg pred func keyw / sel )  ;LA работает под Nc 21.0, 22.0 используется в RenameBlock
;;---------------------=={ Select if }==----------------------;;
;;                                                            ;;
;;  Provides continuous selection prompts until either a      ;;
;;  predicate function is validated or a keyword is supplied. ;;
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Arguments:                                                ;;
;;  msg  - prompt string                                      ;;
;;  pred - optional predicate function [selection list arg]   ;;
;;  func - selection function to invoke                       ;;
;;  keyw - optional initget argument list                     ;;
;;------------------------------------------------------------;;
;;  Returns:  Entity selection list, keyword, or nil          ;;
;;------------------------------------------------------------;;
;; USE
;; (LM:Selectif "\nВыберите ссылку: " (lambda ( x ) (eq "INSERT" (cdr (assoc 0 (entget (car x)))))) entsel nil)

  (setq pred (eval pred))
  (while
    (progn
      (setvar 'ERRNO 0)
      (if keyw (apply 'initget keyw)) 
      (setq sel (func msg))
      (cond
        ((= 7 (getvar 'ERRNO))
         (princ (if IsRus ;LA
                    "\nПропущено, повторите выбор." "\nMissed, Try again."))
        )
        ((eq 'STR (type sel))
         nil
        )
        ((vl-consp sel)
          (if (and pred (not (pred sel)))
            (princ (if IsRus ;LA
                       "\nВыбран неверный объект." "\nInvalid Object Selected."))
          ) ;if
        )
      ) ;cond
    ) ;progn
  )
  sel
) ;defun LM:SelectIf
;;;================== Сервисные ф-ции ================================================
;(setq IsTest T) (setq Istest nil) ;LA
;;LA Последний раз редактировалось VVA, 19.09.2015 в 22:49. Причина: Более правильная _dwgru-layer-create
;;LA в пакете bgtools было переименовано в bg:layer-create, заменила на
 (defun bg:layer-create (layer-list) (_dwgru-layer-create layer-list)) ;LA работает под Nc22.0 используется в (mip_bgsetbylayer); переработала 25.07.2022
;; см. https://forum.dwg.ru/showpost.php?p=93168&postcount=3
 (progn ;LA скрыла описание
    ;|=============================================================================
*   На основе ф-ции _kpblc-layer-create
*   Добавлен новый  параметр  suff - суффикс слоя, если он есть, то имя слоя получается путем
*   добавления к имени существующего слоя суффикса suff
* LA добавлен параметр pref 
*   Создание слоя с указанными параметрами.
*   Параметры вызова:
*   layer-list   список параметров слоя вида:
   '(("name" . "TestLayer")   ; имя слоя. может быть пропущено, если указан suff
     ("color" . 3)         ; номер цвета. nil -> 7
     ("lw" . 50)           ; вес линии слоя. nil -> 25
               ;  Оно выражается в сотых долях миллиметра и может быть любым из следующего ряда:
               ;   0, 5, 9, 13, 15, 18, 20, 25, 30, 35, 40, 50, 53, 60, 70,
               ;  80, 90, 100, 106, 120, 140, 158, 200 и 211.
     ("lt" . "hidden")     ; тип линии слоя. nil -> Continuous
               ; Если описания типа линии в acadiso.lin нет, обязательно указывать следующий параметр
     ("ltfile" . "c:\\cad\\ltypes\\lt.lin")   ; полный путь к файлу с описанием типа линии.
               ; Если файл находится в путях поддержки, путь можно не указывать
               ;
   ("noplot" . t)  ; НЕ печатать слой t или печатный nil, по умолчанию nil ;LA Было: ("plot" . "y") ;Печатать ("y") или нет ("n") слой ; nil -> "y"
   ("lock" . t)         ; Блокировать t  или нет nil слой, по умолчанию nil.
   ("suff" . "_Размеры")  ;_Добавляемый суффикс к текущему слою. ;LA изменила: Если задано поле "name", то суффикс добавляется к "name"
   ("pref" . "01_"))  ;LA Добавляем префикс к текущему слою, если не задано "name". Если задано поле "name", то префикс добавляется к "name"

*    Возвращает vla-указатель на созданный слой. Если слой существует, его
* настройки приводятся в соответствие с переданным списком.
*    Слой размораживается, разблокируется и включается. Не активируется.
* Примеры: 
  (_dwgru-layer-create (setq layer-list '(("color" . 1)("lw" . 50)("lt" . "border")))) 
  (_dwgru-layer-create (setq layer-list '(("name" . "Test") ("color" . 1)("lw" . 50)))) ;создать, если нет, слой Test цветом 1 (красный) толщиной линии 0.5 мм; если есть, то применить параметры
  (_dwgru-layer-create (setq layer-list '(("name" . "Test1")("color" . 2)))) ;установить Lt=сплошная
  (_dwgru-layer-create (setq layer-list '(("name" . "Test2")("color" . 3)("lt" . "осевая")))) ;задано не загруженное правильное русское имя типа линии
  (_dwgru-layer-create (setq layer-list '(("name" . "Test2")("color" . 4)("lt" . "center2")))) ;задано не загруженное правильное лат. имя типа линии
  (_dwgru-layer-create (setq layer-list '(("lt" . "hidden") ("ltfile" . "C:\\ProgramData\\Nanosoft\\nanoCAD x64 22.0\\SHX\\ncadiso.lin")))) ;лат. тип линии из файла с путем
  (_dwgru-layer-create (setq layer-list '(("lt" . "border") ("ltfile" . "ncad.lin")))) ;лат. тип линии из файла без пути
  (_dwgru-layer-create (setq layer-list '(("name" . "Test3")("lt" . "рантghj")   ("ltfile" . "aaa.lin")))) ;тип линии и файл не найдены
  (_dwgru-layer-create (setq layer-list '(("color" . 2)("color" . 1)("lw" . 100) ("pref" . "2_")("suff" . "_Размеры")("noplot" . T)("lock" . nil))))
  (_dwgru-layer-create (setq layer-list '(("color" . 3)("lw" . 35)("lock" . T)("suff" . "_Размеры"))))
;;;(_dwgru-layer-create layer-list)
=========================================================================|;
 ) ;LA скрыла описание

 (defun _dwgru-layer-create (layer-list / vla_layer buf buf1 buflt bufltf ncdoc x ) ;LA добавила buf1 buflt bufltf ncdoc x 
   (setq ncdoc (vla-get-activedocument (vlax-get-acad-object))) ;LA
   (setq layer-list
             (mapcar
               '(lambda (x) (cons (strcase (car x) t) (cdr x))) ;перенести в нижний регистр ключи
               layer-list
             ) ;_ end of mapcar
   ) ;_ end of setq
   (if IsTest ;LA
    (princ (setq *MIP-LAYER-PROP-SETTING*  ;LA  только для справки, не используется
             (list (cons "CLAYER"   (getvar "CLAYER")) ;LA
                   (cons "CECOLOR"  (getvar "cecolor"))
                   (cons "CELWEIGHT"(getvar "celweight"))
                   (cons "CELTYPE"  (getvar "celtype"))
             ) ;_ end of list 
       ) ;_ end of setq 
   )) ;LA
   
 ;;LA забила фрагмент, т.к. почему бы не добавить префикс и суффикс к указанному имени?!   
   (progn ;LA 
 ; ;;Если есть suff добавляем в начало списка, чтобы assoc нашел раньше 
 ; (if (cdr (assoc "suff" layer-list))
 ;  (progn
 ;         (setq layer-list
 ;                (vl-remove (assoc "name" layer-list) layer-list)
 ;         ) ;_ end of setq
 ;         (setq layer-list
 ;                (append
 ;                  (list
 ;                    (cons "name"
 ;                          (strcat (getvar "clayer")
 ;                                  (cdr (assoc "suff" layer-list))
 ;                          ) ;_ end of strcat
 ;                    ) ;_ end of cons
 ;                  ) ;_ end of list
 ;                  layer-list
 ;                ) ;_ end of append
 ;         ) ;_ end of setq
 ;       ) ;_ end of progn
 ;  ) ;_ end of if
   ) ;LA
 ;; LA конец форагмента
 
   (if (assoc "name" layer-list) ;LA
    (if (not(snvalid (setq buf(cdr (assoc "name" layer-list))))) ;LA не самое лучше было просто игнорировать пользовательские ошибки!
        (progn (alert "Не допустимое задание имени слоя! ")(exit)) 
    )
    (setq buf (getvar "CLAYER")) ;LA 
   ) ;_ end of if
   ;(princ (strcat "\nУстановить параметры слоя " buf ": ")) 
   (if (assoc "suff" layer-list) ;LA
    (if (snvalid (setq buf1(cdr (assoc "suff" layer-list))))
        (setq buf (strcat buf buf1))
        (progn (alert "Не допустимое задание суффикса к имени слоя! ")(exit)) 
   )) ;LA
   (if (assoc "pref" layer-list) ;LA
    (if (snvalid (setq buf1(cdr (assoc "pref" layer-list))))
        (setq buf (strcat buf1 buf))
        (progn (alert "Не допустимое задание префикса к имени слоя! ")(exit)) 
   )) ;LA
   (if (member (strcase buf)(mapcar 'strcase (tablelist "Layer"))) ;проверка существования слоя
       (setq vla_layer (vla-item (vla-get-layers ncdoc) buf)) ;_ end of vla-get-layers ;LA
       (setq vla_layer (vla-add  (vla-get-layers ncdoc) buf)) ;_ end of vla-add-layers ;LA 
   ) ;if
   (princ (strcat "\nСоздание и установка параметров слоя " (vla-get-name vla_layer) ": "))(princ layer-list) ;LA
   (if (assoc "color" layer-list) ;LA
    (if (setq buf (cdr (assoc "color" layer-list)))
       (vla-put-color vla_layer buf) ;_ end of vla-put-color
       (progn (alert "Не допустимое задание номера цвета слоя! ")(exit)) 
   )) ;LA
   (if (assoc "lw" layer-list) ;LA
    (if (and (setq buf (cdr (assoc "lw" layer-list)))
             (member buf(list aclnwt000     aclnwt030     aclnwt090
                              aclnwt005     aclnwt035     aclnwt100
                              aclnwt009     aclnwt040     aclnwt106
                              aclnwt013     aclnwt050     aclnwt120
                              aclnwt015     aclnwt053     aclnwt140
                              aclnwt018     aclnwt060     aclnwt158
                              aclnwt020     aclnwt070     aclnwt200
                              aclnwt025     aclnwt080     aclnwt211
                        ) ;_ end of list
                ) ;_ end of member
         ) ;and ;LA
         (vla-put-lineweight vla_layer buf)
     ) ;if ;LA
     (vla-put-lineweight vla_layer aclnwtbylwdefault) ;LA 
   ) ;_ end of if ;LA
   
   (setq buflt  (assoc "lt"     layer-list)) ;LA добавила
   (setq bufltf (assoc "ltfile" layer-list)) ;LA добавила
   (cond ;LA добавила
    ((not buflt)
     (if IsTest (progn (princ "\n_dwgru-layer-create 1; Continuous")))
     (vla-put-linetype vla_layer "Continuous")
    )
    ((and buflt (not bufltf) (setq buf (bg:linetype-load (cdr buflt) nil)))
    (if IsTest (progn (princ "\n_dwgru-layer-create 2; ")))
     (vla-put-linetype vla_layer buf)
    )     
    ((and buflt bufltf (not (setq buf (bg:linetype-load (cdr buflt) (cdr bufltf)))))
     (if IsTest (progn (princ "\n_dwgru-layer-create 3; ")))
     (vla-put-linetype vla_layer "Continuous")
    ) 
    ((and buflt bufltf (setq buf (bg:linetype-load (cdr buflt) (cdr bufltf))))
     (if IsTest (progn (princ "\n_dwgru-layer-create 4; ")))
     (vla-put-linetype vla_layer buf)
    )
    (t (if IsTest (progn (princ "\n_dwgru-layer-create 5; ")))(vla-put-linetype vla_layer "Continuous"))
   ) ;_ end of cond ;LA добавила вместо if
   
   (if (setq buf (cdr (assoc "noplot" layer-list)))
       (vla-put-plottable vla_layer :vlax-false) ;LA
       (vla-put-plottable vla_layer :vlax-true ) ;LA в любом случае надо принудительно установить/изменить параметр!
   ) ;_ end of if 
     
   (if (setq buf (cdr (assoc "lock" layer-list)))
       (vla-put-lock vla_layer :vlax-true ) ;LA
       (vla-put-lock vla_layer :vlax-false) ;LA в любом случае надо принудительно установить/изменить параметр!
   ) ;_ end of if
     
   (vla-put-layeron vla_layer :vlax-true) ;включить слой
   (if (and (not (equal (vla-get-activelayer ncdoc) vla_layer )) ;LA
                 (equal (vla-get-freeze vla_layer) :vlax-true)
       ) ;_ end of and
       (vla-put-freeze vla_layer :vlax-false) ;разморозить слой, если был заморожен
   ) ;_ end of if 
   vla_layer
 ) ;_ end of defun
;;;================================================================================
(defun bg:linetype-load (ltype-name ltype-file) ;LA добавила; Nc22.0 25.07.2022 работает, обошла дефект №42575
   (setq  ltype-name (_kpblc-linetype-load ltype-name ltype-file)) ;LA возаращает имя загруженного типа линии
   ; возвращает объект загруженного типа линии
) ;LA 
(defun _kpblc-linetype-load (ltype-name ltype-file / ltype_list ncdoc) ;LA под Nc 21.0 не грузились типы линий; исправила 25.07.2022; Nc22.0 проверено работает
 (progn ;LA
;| ------------------------------------------------------------------------
*    Функция подгрузки типа линии в текущий файл. Учитывает возможную локализацию системы.
*    Параметры вызова:
*  ltype-name  имя типа линии для английской версии
*  ltype-file  имя файла описания типа линии. nil -> "acadiso.lin" ;LA для AutoCAD, "ncadiso.lin" для Nc
*    Если файл с описанием типа линии не лежит по путям поддержки када, надо указывать полный путь к нему.
*    Примеры вызова:
  (bg:linetype-load (setq ltype-name "center2") nil) ; для русской версии подгружает Осевая и возвращает t при успехе
  (bg:linetype-load (setq ltype-name "dashed") (setq ltype-file "ncadiso.lin"))   ;LA для nanoCAD                               
*** Соответствие наименований линий обеспечивается огромным списком ltype_list, который можно и нужно дополнять
*** Только надо либо все делать мелкими буквами, либо жестко соблюдать регистр в моменты вызовов.
*** Тип линии "Continuous" обработке не подвергается — он есть во всех версиях
-------------------------------------------------------------------------------- |;
 ) ;LA
;; LA см. _kpblc-linetype-load_.lsp в пакете c prokat_Nc.lsp - то же самое, но другое имя функции
;; LA Замечание. См. также команду LC_FIND_LINETYPE в LAYER_CREATOR_Nc.LSP
   (if (not (tblsearch "ltype" ltype-name))  ;LA добавила, если тип линии используется, то ничего загружать не требуется
    (progn ;LA добавила
      (setq ncdoc (vla-get-activedocument (vlax-get-acad-object))) ;LA
     
      (if (and ltype-name (snvalid ltype-name)) ;LA вынесла проверку выше
          (setq ltype-name (strcase ltype-name t))
          (progn (alert (strcat "Не задано/ недопустимое имя типа линии: " (if (eq 'STR (type ltype-name)) ltype-name "")))  (exit))
      ) ;LA
      (if IsTest (progn (princ "\n_kpblc-linetype-load 1; ltype-name = ")(princ (strcase ltype-name t))))
     
      (if (not (member (strcase ltype-name t) '("continuous" "byblock" "bylayer")))  ;_ end of member;_ end of not
        (progn      
          (setq ltype_list '(("border" . "рант")
                             ("border2" . "рант2")
                             ("borderX2" . "рантX2")
                             ("center" . "осевая")
                             ("center2" . "осевая2")
                             ("centerX2" . "осеваяX2")
                             ("dashdot" . "штрихпунктирная")
                             ("dashdot2" . "штрихпунктирная2")
                             ("dashdotX2" . "штрихпунктирнаяX2")
                             ("dashed" . "штриховая")
                             ("dashed2" . "штриховая2")
                             ("dashedX2" . "штриховаяX2")
                             ("divide" . "линия_сгиба")
                             ("divide2" . "линия_сгиба2")
                             ("divideX2" . "линия_сгибаX2")
                             ("dot" . "пунктирная")
                             ("dot2" . "пунктирная2")
                             ("dotX2" . "пунктирнаяX2")
                             ("hidden" . "невидимая")
                             ("hidden2" . "невидимая2")
                             ("hiddenX2" . "невидимаяX2")
                             ("phantom" . "фантом")
                             ("phantom2" . "фантом2")
                             ("phantomX2" . "фантомX2")
                             ("fenceline1" . "ограждение1")
                             ("fenceline2" . "ограждение2")
                             ("tracks" . "пути")
                             ("batting" . "изоляция")
                             ("hot_water_supply" . "горячая_вода")
                             ("gas_line" . "газопровод")
                             ("zigzag" . "зигзаг")
                             ("byblock" . "byblock")
                             ("bylayer" . "bylayer")
                            )
          ) ;_ end of setq 
          (if (not ltype-file) 
           (if (vl-string-search "nano" (vlax-product-key)) ;LA
            ; (= (substr (getvar "PRODUCT") 1 4) "nano") ;LA другой способ определения продукта
              (progn 
               (setq ltype-file "ncadiso.lin") ;LA
               (if IsTest (progn (princ "\n_kpblc-linetype-load 2; ltype-file = ")(princ  ltype-file))) ;LA
              )
              (setq ltype-file "acadiso.lin")
           ) ;LA
           (progn ;LA
;;;        (setq ltype-file 
;;;               (strcat (_kpblc-dir-get-root-menu) 
;;;                       (vl-filename-base ltype-file) 
;;;                       ".lin" 
;;;                       ) ;_ end of strcat 
;;;              ) ;_ end of setq 
           );LA
          ) ;_ end of if 
          (if (assoc ltype-name ltype_list) ;LA если нет в списке локализации, то оставляем тип линии без проверки
          ;  (setq ltype-name ;LA
              (if (or IsRus ;LA, если подгружена русская кодовая страница, считаем что продукт русский;
                      (vl-string-search "419" (vlax-product-key))) ;русский AutoCAD
                  (setq ltype-name (cdr (assoc ltype-name ltype_list))) ;LA  Русская версия, меняем имя типа линии
          ) ;_ end of if 
          ;  ) ;_ end of setq ;LA
          ) ;_ end of if ;LA
          (if IsTest (progn (princ "\n_kpblc-linetype-load 3; ltype-name = ")(princ  ltype-name))) ;LA
          (if (not (tblsearch "ltype" ltype-name))
            ;; тип линии не найден, надо его загрузить. Тип линии должен быть описан в файле 
            
        ;;LA забила фрагмент
        ;;    (setq result (not ;LA
        ;;     (vl-catch-all-error-p 
        ;;      (vl-catch-all-apply 'vla-load (list (vlax-get-property ncdoc 'linetypes) ltype-name ltype-file )) ;_ end of vl-catch-all-apply 
        ;;    ) ;_ end of vl-catch-all-error-p 
        ;;   )) ;result setq
        ;; LA
        (la:ru-error-catch ;LA заменила кусок выше
         (function (lambda ()  ;; Это действие, в котором может возникнуть ошибка
          ; LA дефект #42575 vla-Load работает только с полным путем, не зависимо от наличия пути в окружении в отличие от AutoCAD?!
           (vla-Load (vla-get-Linetypes ncDoc) ltype-name (findfile ltype-file)) 
         ))  
         (function (lambda (x) ;; А здесь действия в случае ошибки
                (princ (strcat (if IsRus "\nОШИБКА: Не найден тип линии/файл: " "\nERROR: File not found ") ltype-name "/" ltype-file " ! "))
                (setq ltype-name nil)
         )) 
        ) ;la:ru-error-catch
       ) ;_ end of if 
          
        ) ;_ end of progn 
      ) ;_ end of if
   ));progn if ;LA добавила проверку, что тип линии уже используется
   ltype-name ;;LA возвращаем наименование типа линии, было ниже - vla-объект

) ;_ end of defun bg:linetype-load 

(defun C:BGCOLBL nil (mip_bgsetbylayer))  ;LA работает под Nc 21.0
;;; BG Color By Layer

(defun mip_bgsetbylayer ( / *error* tmp cnt color Lay Lw pbar doc)  ;LA работает под Nc 21.0, 22.0
;;; Установка послою цвета примитивов подосновы. Цвет не должен меняться
;;; Если цвет задан явно - создается слой
;;; СМ C2L (Color 2 layer) http://forum.dwg.ru/showthread.php?p=1067614#post1067614
;;;  (mip_bgsetbylayer)
  (defun *error* (msg)
    (princ msg)
    ;(bg:progress-clear) ;LA
    (bg:layer-status-restore)
    (princ)
  ) ;_ end of defun *error*
   
  (vl-load-com)
  (setq doc (vla-get-activedocument (vlax-get-acad-object)))
  (bg:layer-status-save)
;;;Вести список слоев с их свойствами, слои разблокировать, выключеннные и замороженные не трогать. Замороженные исключить из списка
  (vlax-for Lay (vla-get-layers doc)
    (vla-put-color Lay (vla-get-color Lay))
    (if (< (vla-get-lineweight Lay) aclnwt025)
      (vla-put-lineweight
        Lay
        (max aclnwt025 (getvar "LWDEFAULT"))
      ) ;_ end of vla-put-LineWeight
    ) ;_ end of if
  ) ;_ end of vlax-for
  (setq cnt 0 pbar 0)
  ;(bg:progress-clear) ;LA
  ;(bg:progress-init (strcat "Обрабатываю модель ...") (/ (vla-get-count (vla-get-modelspace doc)) 500)) ;LA
  (princ "Обрабатываем модель ...") (princ(/ (vla-get-count (vla-get-modelspace doc)) 500)) ;LA
  (vlax-for item (vla-get-modelspace doc)
    (if (zerop (rem (setq cnt (1+ cnt)) 500))
   ; (bg:progress 
    (setq pbar (1+ pbar))  ;) ;LA
    )
    (if (and (vlax-write-enabled-p item) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
             (vlax-property-available-p item 'Color)
        ) ;_ end of and
;;;На всякий случай переводим из RGB в ACI
      (vl-catch-all-apply
        'vla-put-color
        (list item (vla-get-color item))
      ) ;_ end of vl-catch-all-apply
    ) ;_ end of if
    (setq color (vla-get-color item)
          Lay   (vla-get-layer item) ;_ "*|*"
          Lw    (vla-get-lineweight item)
    ) ;_ end of setq
    (if (not (wcmatch Lay "*|*")) ;_пропускаем внешние ссылки
      (progn
        (cond ((eq Lw aclnwtbyblock)
               (setq Lw (max aclnwt025 (getvar "LWDEFAULT")))
              )
              ((eq Lw aclnwtbylwdefault)
               (setq Lw (max aclnwt025 (getvar "LWDEFAULT")))
              )
              ((eq Lw aclnwtbylayer)
               (setq
                 Lw (vla-get-lineweight
                      (vla-item (vla-get-layers doc) Lay)
                    ) ;_ end of vla-get-LineWeight
               ) ;_ end of setq
              )
              (t nil)
        ) ;_ end of cond

        (cond
          ((eq color acbylayer) nil)
          ((eq color (vla-get-color (vla-item (vla-get-layers doc) Lay))) ;_Цвет задан явно, но совпадает с цветом слоя
           ;_Задаем цвет послою
           (vl-catch-all-apply 'vla-put-color (list item acbylayer))
           )
          ((and
             (eq color acbyblock)
             (eq acWhite (vla-get-color (vla-item (vla-get-layers doc) Lay))) ;_Цвет задан поблоку, цвет слоя acWhite
             )
           ;_Задаем цвет послою
           (vl-catch-all-apply 'vla-put-color (list item acbylayer))
           )
          (t
           (if (eq color acbyblock)(setq color acWhite)) ;_ end of if
           (setq tmp (vla-item (vla-get-layers doc) Lay))
           (if IsTest (progn (princ "\n(mip_bgsetbylayer) 1 tmp = ")(princ tmp))) ;LA
           (if (eq (vla-get-plottable tmp) :vlax-false) ;LA
            (setq tmp (bg:layer-create
                       (list
                         (cons "name" (strcat Lay "_C_" (itoa color)))
                         (cons "color" color)
                         (cons "lw"    Lw)
                         (cons "lt"   (vla-get-linetype tmp))
                         (cons "noplot" T) ;_ end of cons ; ;LA ???
                       ) ;_ end of list
             )        ) ;_ end of bg:layer-create
             (setq tmp (bg:layer-create
                       (list
                         (cons "name" (strcat Lay "_C_" (itoa color)))
                         (cons "color" color)
                         (cons "lw"    Lw)
                         (cons "lt"   (vla-get-linetype tmp))
                       ) ;_ end of list
             )        ) ;_ end of bg:layer-create    ;_ end of setq    
           ) ;LA
           (vl-catch-all-apply 'vla-put-color (list item acbylayer))
           (vl-catch-all-apply 'vla-put-layer (list item (vla-get-name tmp))) ;_ end of VL-CATCH-ALL-APPLY
;;; Lw не трогаем
          ) ;t
        ) ;_ end of cond
        (setq tmp (vla-item (vla-get-layers doc) Lay))        
        (if (and (vlax-write-enabled-p item) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                 (eq (vla-get-objectname item) "AcDbBlockReference")
                 (eq (vla-get-hasattributes item) :vlax-true)
         ) ;_ end of and
         (foreach att
          (append (vlax-invoke item 'GETATTRIBUTES)
                  (vlax-invoke item 'GETCONSTANTATTRIBUTES)
          ) ;_ end of append
          (vl-catch-all-apply 'vla-put-color (list att acbylayer))
          (vl-catch-all-apply 'vla-put-layer (list att (vla-get-name tmp))) ;_ end of VL-CATCH-ALL-APPLY
          (vl-catch-all-apply 'vla-put-lineweight (list att aclnwt030)) ;_ end of VL-CATCH-ALL-APPLY
         ) ;_ end of foreach
        ) ;_ end of if
        (if (and (vlax-write-enabled-p item) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                 (wcmatch (vla-get-objectname item) "*Dimension*")
            ) ;_ end of and
         (progn
          (vl-catch-all-apply 'vla-put-extensionlinecolor (list item acbyblock)) ;_ end of vl-catch-all-apply
          (vl-catch-all-apply 'vla-put-textcolor          (list item acbyblock)) ;_ end of vl-catch-all-apply
          (vl-catch-all-apply 'vla-put-dimensionlinecolor (list item acbyblock)) ;_ end of vl-catch-all-apply
         ) ;_ end of progn
        ) ;_ end of if        
      ) ;_ end of progn
    ) ;_ if wcmatch "*|*"

  ) ;_ vlax-for
  ;(bg:progress-clear) ;LA
  ;(bg:progress-init (strcat "Обрабатываю блоки ...")(/ (vla-get-count (vla-get-blocks doc)) 100)) ;LA
  (princ "\nОбрабатываем блоки ...")(princ (/ (vla-get-count (vla-get-blocks doc)) 100)) ;LA
  (setq cnt 0 pbar 0)
;;; Проходимся по блокам
  (vlax-for item (vla-get-blocks doc) ;_ end of vla-get-blocks
    (if (zerop (rem (setq cnt (1+ cnt)) 100))
        ;(bg:progress ;LA
        (setq pbar (1+ pbar)) ;) ;LA
    ) ;if
    (if(and (eq (vla-get-islayout item) :vlax-false) ;_ не листы
            (eq (vla-get-isxref item) :vlax-false) ;_ не внешние ссылки
            (not (wcmatch (vla-get-name item) "*|*"))
       ) ;_ end of and
       (progn
        (vlax-for sub_item item
          (vl-catch-all-apply
            '(lambda ()
               (setq color (vla-get-color sub_item)
                     Lay   (vla-get-layer sub_item) ;_ "*|*"
                     Lw    (vla-get-lineweight sub_item)
               ) ;_ end of setq
               (if (not (wcmatch Lay "*|*")) ;_пропускаем внешние ссылки
                 (progn
                   (cond ((eq Lw aclnwtbyblock) nil)
                         ((eq Lw aclnwtbylwdefault)
                          (setq Lw (max aclnwt025 (getvar "LWDEFAULT")))
                         )
                         ((eq Lw aclnwtbylayer)
                          (setq Lw (vla-get-lineweight (vla-item (vla-get-layers doc) Lay))) ;_ end of setq
                         )
                         (t nil)
                   ) ;_ end of cond

                   (cond
                     ((eq color acbylayer) nil)
                     ((eq color acbyblock) nil)
                     ((eq color (vla-get-color (vla-item (vla-get-layers doc) Lay))) ;_Цвет задан явно, но совпадает с цвето слоя
                      ;_Задаем цвет послою
                      (vl-catch-all-apply 'vla-put-color (list sub_item acbylayer))
                     )
                     (t
                      (setq tmp (vla-item (vla-get-layers doc) Lay)) ;_ end of vla-item
                       (if IsTest (progn (princ "\n(mip_bgsetbylayer) 2 tmp = ")(princ tmp))) ;LA
                      (if (eq (vla-get-plottable tmp) :vlax-false) ;LA
                         (setq tmp (bg:layer-create
                                  (list
                                    (cons "name" (strcat Lay "_C_" (itoa color)))
                                    (cons "color" color)
                                    (cons "lw" Lw)
                                    (cons "lt" (vla-get-linetype tmp))
                                    (cons "noplot" t) ;_ end of if ;LA ???
                                  ) ;_ end of list
                           )      ) ;_ end of _bg:layer-create;_ end of setq
                          
                          (setq tmp (bg:layer-create
                                  (list
                                    (cons "name" (strcat Lay "_C_" (itoa color)))
                                    (cons "color" color)
                                    (cons "lw" Lw)
                                    (cons "lt" (vla-get-linetype tmp))
                                  ) ;_ end of list
                          )      ) ;_ end of _bg:layer-create ;_ end of setq
                      ) ;if ;LA    
                      (vl-catch-all-apply 'vla-put-color (list sub_item acbylayer))          ;_ end of VL-CATCH-ALL-APPLY
                      (vl-catch-all-apply 'vla-put-layer (list sub_item (vla-get-name tmp))) ;_ end of VL-CATCH-ALL-APPLY
;;; Lw не трогаем
                      (if (and (vlax-write-enabled-p sub_item) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                               (eq (vla-get-objectname sub_item) "AcDbBlockReference" ) ;_ end of eq
                               (eq (vla-get-hasattributes sub_item) :vlax-true ) ;_ end of eq
                          ) ;_ end of and
                          (foreach att
                           (append (vlax-invoke sub_item 'GETATTRIBUTES)
                                   (vlax-invoke sub_item 'GETCONSTANTATTRIBUTES ) ;_ end of vlax-invoke
                                 ) ;_ end of append
                          (vl-catch-all-apply 'vla-put-color      (list att acbylayer))          ;_ end of VL-CATCH-ALL-APPLY
                          (vl-catch-all-apply 'vla-put-layer      (list att (vla-get-name tmp))) ;_ end of VL-CATCH-ALL-APPLY
                          (vl-catch-all-apply 'vla-put-lineweight (list att aclnwt030))          ;_ end of VL-CATCH-ALL-APPLY
                          ) ;_ end of foreach
                      ) ;_ end of if
                      (if (and (vlax-write-enabled-p sub_item) ;LA дефект #7699 в Nc 21.0 (всегда T), исправлен в NC(x64)21.1(5826.3706.5936)_mega
                               (wcmatch (vla-get-objectname sub_item) "*Dimension*" ) ;_ end of wcmatch
                          ) ;_ end of and
                        (progn
                          (vl-catch-all-apply 'vla-put-extensionlinecolor (list sub_item acbyblock)) ;_ end of vl-catch-all-apply
                          (vl-catch-all-apply 'vla-put-textcolor          (list sub_item acbyblock)) ;_ end of vl-catch-all-apply
                          (vl-catch-all-apply 'vla-put-dimensionlinecolor (list sub_item acbyblock)) ;_ end of vl-catch-all-apply
                        ) ;_ end of progn
                      ) ;_ end of if

                     ) ;T
                   ) ;_ end of cond
                 ) ;_ end of progn
               ) ;_ if wcmatch "*|*"

             ) ;_ end of lambda
          ) ;_ end of vl-catch-all-apply
        ) ;_ end of vlax-for
      ) ;_ end of progn
    ) ;_ end of if 
  ) ;_ end of vlax-for
  ;(bg:progress-clear) ;LA
  (bg:layer-status-restore)
  (vl-cmdf "_.Regenall")
) ;_ end of defun mip_bgsetbylayer

(defun bg:conv-ent-to-ename (ent / ret) ;LA работает под Nc, в т.ч. 22.0
;;;    Выполняет преобразование переданного указателя в ename-вариант
;;;    Параметры вызова:
;;;	ent	обрабатываемый указатель. Может быть:
;;;		 ename
;;;		 vla-object
;;;		 строка (воспринимается как хендл примитива)
;;;		 список, полученный от (entsel)
;;;		 список, полученный от (entget)
;;;    Примеры вызова:
  ;|
(setq
  entity (vla-addline
        (vla-get-modelspace (vla-get-activedocument (vlax-get-acad-object)))
        (vlax-3d-point (setq pt (getpoint "Начальная точка: ")))
        (vlax-3d-point (getpoint pt "Конечная точка: "))
        ) ;_ end of vla-addline
  ) ;_ end of setq
(bg:conv-ent-to-ename entity)	; <Entity name: 7ef5cf68>
|;
  (cond
    ((= (type ent) 'vla-object) (vlax-vla-object->ename ent))
    ((= (type ent) 'ename) ent)
    ((= (type ent) 'str) (handent ent))
;;;((= (type ent) 'str) (handent str))
;;; VVA 26/12/2007 : start
    ((and (= (type ent) 'list)
          (= (type (setq ret (car ent))) 'ename)
          ) ;_ end of and
     ret
     )
    ((= (type ent) 'list) (cdr (assoc -1 ent)))
    (t nil)
;;; VVA 26/12/2007 : end
    ) ;_ end of cond
) ;defun bg:conv-ent-to-ename 


(defun bg:bitset (A B) (= (boole 1 A B) B))
(defun bg:ver () "3.11b1_Nc") ;LA было 3.11a

;; LA  ================= Добавления ================================================
;; LA см. Справку по AutoCAD 2019. Добавила, поскольку в Nc есть доп.словари выносок
(defun c:ListDictionaries ( / ed ed1) ;LA работает под Nc
;Example code lists each of the dictionaries in the drawing’s named object dictionary and their entries
;Пример кода, выводящего все словари чертежа и их примитивы
 (if IsRus ;LA
  (prompt "\nСловари текущего чертежа: ")
  (prompt "\nDictionaries in current drawing: ")
 )
  (foreach ed (entget (namedobjdict))
    (progn
      (cond ((= (car ed) 3)
        (prompt (strcat "\n" (cdr ed))))
            ((= (car ed) 350)
        (progn
          (foreach ed1 (entget (cdr ed))
            (if (= (car ed1) 3)
              (prompt (strcat "\n  " (cdr ed1)))
            )
          )
        ))
      ) ;cond
    ) ;progn
  )
 (princ)
)

;LA была лок. функция (la:GetSavePath) в (bg:blfixdialog), теперь глобальная (la:GetSavePath)
(defun la:GetSavePath ( / tmp ) ;LA путь к dcl без диалога в отличие от (LC_FIND_FILE DlgPrompt FName Ext)
   (if (vl-string-search "nano" (vlax-product-key))
    (cond ;LA добавила для "nano", усекает если \\ не на конце
      ((and (vl-file-directory-p (getvar 'ROAMABLEROOTPREFIX))
       (setq tmp(vl-string-translate "/" "\\" (vl-filename-directory(getvar 'ROAMABLEROOTPREFIX))))
           (setq tmp(findfile (getvar 'ROAMABLEROOTPREFIX)))
       )
       tmp  
      )
      ((and (wcmatch (getenv "ACAD") (strcat "*" (getvar 'TEMPPREFIX ) "*"))
            (setq tmp (vl-string-translate "/" "\\" (vl-filename-directory(getvar 'TEMPPREFIX )))); "/"
            (setq tmp (findfile (getvar 'TEMPPREFIX )))
            (vl-file-directory-p (getvar 'TEMPPREFIX ))
       )
       tmp  
      )
    ) ;cond  
    (cond ;LA оставила для совместимости с AutoCAD  
      ((setq tmp (getvar 'ROAMABLEROOTPREFIX))
       (strcat (vl-string-right-trim "\\" (vl-string-translate "/" "\\" tmp)) "\\Support")
      )
      ((setq tmp (findfile "ACAD.pat")) ;LA для Nc должно быть ncad.pat
       (vl-string-right-trim "\\" (vl-string-translate "/" "\\" (vl-filename-directory tmp)))
      )
    ) ;cond
   ); if ;LA
) ;defun la:GetSavePath

;;LA Копирование состава указанного анонимного/именованого блока в нормальный
;;LA (только создает определение блока с новым именем без вставки)
(defun la:anonym-copy (blk_ref name / adoc blk_ref_cont blk); LA добавила Работает под nanoCAD 21.x (не используется)
; Для версий Nc ниже 21.0 закомментировать строчки с vla-startundomark, vla-endundomark
; blkref = #<VLA-OBJECT IAcadBlockReference...
; name = новое имя блока, например было *U12, стало Копия_U12
; Copying anonymous block definition to a "normal" block

  (if IsTest (progn (princ "\n1 la:anonym-copy blkref = ")(princ blkref)))
  (setq adoc (vla-get-activedocument (vlax-get-acad-object))) ;LA
  (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
         (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
      (vla-startundomark adoc) ;LA
  ) ;LA
  (setq blk_ref (vlax-vla-object->ename blk_ref)) 
  (if IsTest (progn (princ "\n2 la:anonym-copy blkref = ")(princ blkref)))
  ;(if (not blk_ref)(setq blk_ref (car (entsel "\nSelect anonymous block reference : ")))) ;LA для проверки фрагментами
  (if (and (= (type blk_ref) 'ename) ;LA
           (= (cdr (assoc 0 (entget blk_ref))) "INSERT")
      ) ;_ end of and
    (progn
      (setq blk_ref (vla-item (vla-get-blocks adoc) (cdr (assoc 2 (entget blk_ref)))))
   ;  (setq  name    "TestBlock1") ;LA здесь забить, name в параметр, взятый по запросу для проверки фрагментами
      (setq  blk (vla-add (vla-get-blocks adoc) (vlax-3d-point '(0. 0. 0.)) name)) ;_ end of setq
      (vlax-for ent blk_ref
        (setq blk_ref_cont (cons ent blk_ref_cont))
      ) ;_ end of vlax-for
      (setq blk_ref_cont (reverse blk_ref_cont))
      (vla-copyobjects adoc
                       (vlax-make-variant
                         (vlax-safearray-fill
                           (vlax-make-safearray
                             vlax-vbobject
                             (cons 0 (1- (length blk_ref_cont)))
                             ) ;_ end of vlax-make-safearray
                           blk_ref_cont
                           ) ;_ end of vlax-safearray-fill
                         ) ;_ end of vlax-make-variant
                       blk
      ) ;_ end of vla-CopyObjects
     ) ;_ end of progn
    ) ;_ end of if
    (if (or(not(vl-string-search "nano" (vlax-product-key)))   ;LA
           (>= (atof(getvar "ACADVER")) 21 ))                  ;LA
        (vla-endundomark adoc)
    ) ;LA
    (princ)
  ) ;_ end of defun la:anonym-copy

;; LA добавила. Получение vla-объекта таблицы слоев layers, используется в bg:hatch-delete
;; (la:GetLays)
(defun la:GetLays ( / actdoc currLayer layers)
    (if IsTest (progn (princ "\n 1 la:GetLays ")))
    (setq actdoc (vla-get-ActiveDocument (vlax-get-acad-object)))
    (setq currLayer (vla-get-ActiveLayer actdoc))
    ; (princ (strcat "\nТекущий слой " (vla-get-Name currLayer)))
    (setq layers (vla-get-Layers actdoc))
    (vla-get-ObjectName layers)
    ;разблокировка всех слоев
layers
)

(defun la:ru-error-catch (protected_expression on_error_expression / catch_error_result) ;LA добавила префикс к имени функции     
 ;; https://forum.dwg.ru/showthread.php?t=22894&page=96 #1914
 ; Ловушка ошибок.
 ; Применять vl-catch-all-apply надо в связке с vl-catch-all-error-p и vl-catch-all-error-message.
 ; Чтобы не думать каждый раз сделана эта библиотечная функция.
 (progn
  ;|  ; Например:
   (la:ru-error-catch
      (function (lambda ()  ;; Это действие, в котором может возникнуть ошибка
        ;LA vla-Load работает только с полным путем, в отличие от AutoCAD?!
        (vla-Load (vla-get-Linetypes ncDoc) ltype (findfile "ncadiso.lin")) 
      ))  
      (function (lambda (x) ;; А здесь действия в случае ошибки
                (princ (if IsRus "\nОШИБКА: Не найден файл ncadiso.lin ! " "\nERROR: File ncadiso.lin not found ! "))
                (exit)
      )) 
    ) ;la:ru-error-catch
   |;
 ) progn
 
  (setq catch_error_result (vl-catch-all-apply protected_expression))
  (if (and (vl-catch-all-error-p catch_error_result) on_error_expression)
    (apply on_error_expression (list (vl-catch-all-error-message catch_error_result)))
    catch_error_result
  ) ;if
)
;; LA ========конец добавления ====================

(defun C:BGINFO () ;LA добавила, чтобы не печатал лишнего, но можно было вызвать список команд без повторной загрузки
 (if IsRus ;LA
 (progn
  (princ (strcat "\nBackground tools v." (bg:ver) " Наберите в командной строке:"))
  (princ "\n+ BGLAYDEL - Удаление выключенных и замороженных слоев с примитивами.") ;LA обходим #37303, #37304, Nc21.0, 22.0
  (princ "\n+ BG1BLEXP - Взрывает блоки, состоящие из одного примитива (возможно другого блока)") ;LA Nc21.0, 22.0
  (princ "\n+ BGBLEXP  - Взрывает блок и все блоки, входящие в него, превращая видимые атрибуты в текст") ;LA Nc21.0, 22.0
  (princ "\n+ BGBLEXP1 - Взрывает блоки 1-го уровня, превращая видимые атрибуты в текст") ;LA Nc21.0, 22.0
  (princ "\n+ BGBLDYNEXP1 - Взрывает динамические блоки 1-го уровня, превращая видимые атрибуты в текст")
  (princ "\n+ BGBLEXP1NOATT - Взрывает блоки 1-го уровня, у которых нет видимых атрибутов")
  (princ "\n+ BGBLXCLIP - Показывает подрезанные блоки") ;LA Nc21.0, 22.0
  (princ "\n-+ BGBLXCLIPEXP - Взорвать подрезанный блок") ;ничего не делает под Nc 21.0, под 22.0 взрывает, линии обрезаются не все
  (princ "\n+ BGBLDYN2A - Преобразовывает динамические блоки в анонимные")
  (princ "\n+ BGBLDYN2S - Преобразовывает динамические блоки в статические")
  (princ "\n+ BGBLALLDYN2A - Преобразовывает ВСЕ динамические блоки в анонимные")
  (princ "\n+ BGBLALLDYN2S - Преобразовывает ВСЕ динамические блоки в статические")
  (princ "\n+ BGCB - копирует одно из вхождений блока в блок с новым именем. www.lee-mac.com") ;LA Nc 22.0 для статич. блоков
  (princ "\n+ BGRB - переименовывает одно из вхождений блока в блок с новым именем. www.lee-mac.com") ;LA Nc 22.0 для статич. блоков
  (princ "\nM2U - Преобразовать MINSERT (МН-БЛОК) в Unnamed блок") ;LA не выбирает МН-блок
  (princ "\nM2B - Преобразовать MINSERT (МН-БЛОК) в блок") 
  (princ "\nU2B - Преобразовать UNNAMED в блок") ;LA делает под Nc 21.0 2 неименов. блока из одного, но преобразовывает МН-блок в именованый?!
  (princ "\nU2BM - Преобразовать UNNAMED в блок множественный выбор") ;LA работает под Nc 21.0, 22.0
  
  (princ "\nUX - Взорвать UNNAMED блок") ;LA взрывает МН-блоки под Nc 21.0, не именованные блоки взрываются Explode и BURST
  (princ "\n=======================================")
  (princ "\n+ BGRGB2ACI - Изменяет цвет с RGB на ACI")
  (princ "\n+ BGAll2RGB - Изменяет ACI цвет в его RGB эквивалент")
  (princ "\n+ BGCOLOR - Задает выбранный цвет всем объектам")
  (princ "\n+ BGCOLORCMD - Задает выбранный цвет всем объектам с запросом в командной строке")
  (princ "\n+ BGCOLORXREF - Меняет цвет выбранных внешних сылок (только в текушем сеансе)") ;Nc 22.0
  (princ "\n+ BGCOLBL - Установка послою цвета примитивов подосновы. Если цвет задан явно- создается новый слой")  
  (princ "\n+ BGResetXRef -Сброс настроек слоев выбранных внешних ссылок на установленные в исходном файле") ; Nc >=22
  (princ "\n+ BGBLCC - Изменяет цвет выбранных блоков") ;LA под Nc22.0, кроме многострочных атрибутов
  (princ "\n+ BGENCC - Изменяет цвет выбранного элемента блока") ;LA под Nc22.0, кроме многострочных атрибутов
  (princ "\n+ BGCATT - Изменяет цвет атрибутов выбранных блоков") ;LA под Nc22.0 только для однострочных атрибутов
  (princ "\n+ BGCBL2 - Изменяет цвет в блоках 2 и более уровня (вложенных блоках)") ; LA под Nc 21.0 кроме таблиц и атрибутов 2-го уровня
  (princ "\n+ BGBLFIX - Нормализация блоков") ;LA работает под Nc 22.0 14.07.2022
  (princ "\n+ BGCFT   - Конвертирует все поля в обычный текст")  ;кроме выносок под Nc 21.0, все под Nc22.0
  (princ "\n+ BGCFTSEL - конвертирование полей в обычный текст в выбранных примитивах") ;кроме выносок под NC 21.0, все под Nc22.0
  (princ "\n+ BGHATCHDEL - Удаление штриховки") ; удаляет штриховку по запросу, в т.ч. в блоках с заморож., блокир., выкл. слоев под NC 21.0, Nc22.0
 )
 (progn
  (princ (strcat "\nBackground tools v." (bg:ver) " Type in command line:"))
  (princ "\nBGLAYDEL - delete frozen and off layers with objects")
  (princ "\nBG1BLEXP - Explode blocks consisting of one primitive thing (it is possible other block)")
  (princ "\nBGBLEXP  - Explode the block and all blocks entering into it, transforming visible attributes in the text")
  (princ "\nBGBLEXP1 - Explode blocks of 1st level, transforming visible attributes in the text")
  (princ "\nBGBLDYNEXP1 - Explode dynamic blocks of 1st level, transforming visible attributes in the text")
  (princ "\nBGBLEXP1NOATT -Explode blocks of 1st level which do not have visible attributes ")
  (princ "\nBGBLXCLIP - show xclip blocks")
  (princ "\nBGBLDYN2A - Convert Dynamic Blocks to Anonymous blocks")
  (princ "\nBGBLALLDYN2A - Conver ALL Dynamic Blocks to Anonymous")
  (princ "\nBGBLALLDYN2S - Conver ALL Dynamic Blocks to Static")
  (princ "\nBGBLDYN2S - Convert Dynamic Blocks to Static blocks")
  (princ "\nBGBLXCLIP - show xclip blocks")
  (princ "\nBGBLXCLIPEXP - explode clipped block")
  (princ "\nBGCB - copy a single block reference in the working drawing. www.lee-mac.com")
  (princ "\nBGRB - rename a single block reference in the working drawing. www.lee-mac.com")
  (princ "\nM2U - Convert MINSERT to Unnamed block")
  (princ "\nM2B - Convert MINSERT to block")
  (princ "\nU2B - Convert UNNAMED to block")
  (princ "\nU2BM - Convert UNNAMED to block multiple selection")
  (princ "\nUX - Explode UNNAMED block")
  (princ "\n=======================================")
  (princ "\nBGRGB2ACI - Changes color from RGB to the corresponding Index Color (ACI)")
  (princ "\nBGAll2RGB - Converts the ACI colours of all entities to the RGB TrueColor equivalent")
  (princ "\nBGCOLOR - Set a selected color to all objects (WITHOUT XREF)")
  (princ "\nBGCOLORCMD - Set a selected color to all objects. Command line version")
  (princ "\nBGCOLORXREF - Changes color selected XREF ( ONLY ON A CURRENT SESSION )")
  (princ "\nBGCOLBL - Sets the color primitives \"bylayer\". If the color is set to force - Create a new layer")
  (princ "\nBGResetXRef -Resets properties of all layers dependent on the selected XREF(s) to those set in the source drawing file(s).")
  (princ "\nBGBLCC - Changes color of the chosen blocks")
  (princ "\nBGENCC - Changes color of the chosen element of the block")
  (princ "\nBGCATT - Changes color of attributes of the chosen blocks")
  (princ "\nBGCBL2 - Changes color in blocks 2 and more levels (the nested blocks)")
  (princ "\nBGBLFIX - fix (normalize) blocks")
  (princ "\nBGCFT - Convert field to text")
  (princ "\nBGCFTSEL - Convert field to text in selected objects")
  (princ "\nBGHATCHDEL - Remove hatch")
    )
 )
) ;defun C:BGINFO ;LA
(princ (if IsRus (strcat "\nЗагружен bgtools " (princ (bg:ver)) ". Список команд: BGINFO")
                 (strcat "\bgtools is loaded " (princ (bg:ver)) ". List of commands: BGINFO")))  ;LA
(princ)
