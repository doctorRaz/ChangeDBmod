(vl-load-com)
;;  saveuistate
; запомнить настройки интерфейса
(defun c:drz_Saveuistate (/ sfiledia sexo )
(setq sexo (getvar "CMDECHO"))
  (setvar "CMDECHO" 0)  
  (setq sfiledia (getvar "filedia"))
  (setvar "filedia" 0)
  (command "saveuistate"
	   (strcat (getvar "ROAMABLEROOTPREFIX")
		   "\\config\\saveduistate.cfg"
	   ) ;_ _endstrcat
  ) ;_ _endcommand
  (setvar "filedia" sfiledia)
  (setvar "CMDECHO" sexo)
  (princ)
) ;_ _enddefun
