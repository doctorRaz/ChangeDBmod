; Автозапуск текстовых лиспов 

(load "t2m.LSP") ; Тексты в МТексты

(load "BoundMText_nc.lsp") ; маскировка Мтекстов

(load "change text styles (cts) 2.0f.LSP")  ;Замена текстовых стилей
                                            ; Замена текстовых стилей деформатирование МТекстов
                                            ; Изменить стили текстов в блоках(не работает)
                                            ; Удалить форматирования МТекста
(load "StripMtext.lsp")                     ; Удалить форматирования МТекста (StripMtext)


; reload, AutoRun_Text 
(defun c:drz_reload_AutoRun_Text ()
  (load "AutoRun_Text.lsp")
  (prompt "\nПерезагрузил Text lsp!")
  (princ)
) ;_enddefun