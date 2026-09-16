; ********************************
; https://adn-cis.org/forum/index.php?topic=8184.msg29436#msg29436
; Т.е. если тебе нужно из Xdata удалить приложение appName, то удалять следует так:
; using (ResultBuffer rb = new ResultBuffer(new TypedValue(1001, appName)))
; {
    ; obj.XData = rb;
; }

; ********************************
(vl-load-com)
 ;;мочит в файле метку 3D
; (defun c:r3_all_d ( / blk xt xd sexo)
(setq sexo (getvar "CMDECHO"))
  (setvar "CMDECHO" 0)
  
  (vlax-for blk (vla-get-Blocks 
        (vla-get-ActiveDocument (vlax-get-acad-object)))
    (vlax-dump-object blk)
    (setq xt (vlax-make-safearray vlax-vbInteger '(0 . 0)))
    (setq xd (vlax-make-safearray vlax-vbVariant '(0 . 0)))
    (vlax-safearray-put-element xt 0 1001)
    (vlax-safearray-put-element xd 0 "mc3dBlockType2")
    (vla-SetXData blk xt xd)
    (vlax-safearray-put-element xd 0 "mc3dDrM")
    (vla-SetXData blk xt xd)
    (vlax-safearray-put-element xd 0 "McsXdata5")
    (vla-SetXData blk xt xd)
    )
	(setvar "CMDECHO" sexo)
	(princ "\nУдалил триде метку))")
; )   

; перезагрузить себя
; (defun c:drz_Reload3d ()
  ; reload  
  ; (load "r3_all_d.lsp")
  ; (prompt "\nПерезагрузил r3_all_d.lsp ")
  ; (princ)
; ) ;_ _enddefun