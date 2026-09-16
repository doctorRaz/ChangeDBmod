(vl-load-com)
 ;;мочит в файле метку 3D
(defun c:drz_remov_all_3d ( / blk xt xd )

	(command "drz_rem3d")
	(prin1)
)   


(defun c:drz_rem3d ()
  (load "r3_all_d.lsp")
  ; (prompt "\nУдалил триде метку)) ")
  (princ)
) ;_enddefun;; ----------------------------

 
