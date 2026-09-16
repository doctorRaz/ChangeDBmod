; Автозапуск 

(load "UngroupAll.lsp") ; Удалить ПУСТЫЕ группы
                        ; Удалить НЕИМЕНОВАННЫЕ группы
                        ; Удалить ВСЕ группы


            


; reload, AutoRun_Text 
(defun c:drz_reload_AutoRun_Group ()
  (load "AutoRun_Group.lsp")
  (prompt "\nПерезагрузил Group lsp!")
  (princ)
) ;_enddefun