; Автозапуск 

(load "Remove3D_mark.lsp");Удалить 3D метку

; --- ; удаляем с чертежа элементы вариативности от Кулика и Эдуарда----
(load "Rem-EnhancedBlock.lsp"); Удалить элементы вариации (тихо)
                                ; Удалить элементы вариации (громко)

(load "GeoChange.lsp");Удалить геомаркер
                        ; Геомаркер отключить
                        ; Геомаркер включить

(load "Viewports_borders.lsp");Показать ВЭ

(load "Viewports_ON_OF.lsp");Включить ВЭ
                            ; Отключить ВЭ

(load "Saveuistate.lsp");Сохранить интерфейс

(load "switcher layouts by kedobear.lsp") ; Переход на следующую вкладку (лист, модель)
                                          ; Переход на предыдущую вкладку (лист, модель)
          
; reload, AutoRun_Text 
(defun c:drz_reload_AutoRun_Others ()
  (load "AutoRun_Others.lsp")
  (prompt "\nПерезагрузил Others lsp!")
  (princ)
) ;_enddefun