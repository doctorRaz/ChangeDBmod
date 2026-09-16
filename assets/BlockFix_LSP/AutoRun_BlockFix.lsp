; Автозапуск лиспов

; Команда АнноСписок
; Выводит в командную строку список используемых в чертеже аннотативных масштабов.
(load "anno-scale-list.lsp")

; Команда АнноВыбрать
; Выводит в командную строку список используемых в чертеже аннотативных масштабов.
(load "anno-select-objects")



(defun c:drz_reload_AutoRun_BlockFix ()
  ;; reload, AutoRun-Lisp  
  (load "AutoRun_BlockFix")
  (prompt "\nПерезагрузил BlockFix lsp!")
  (princ)
) ;_enddefun