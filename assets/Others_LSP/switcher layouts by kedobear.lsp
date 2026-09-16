 (defun c:drz_layprev
       (/ ad lts i cur_lay_num prev_lay_num lay i_lay_num count)
  (vl-load-com)
  (setq ad (vla-get-activedocument (vlax-get-acad-object)))
  (setq lts (vla-get-layouts ad))	;получили указатель на семейство вкладок (модель - вкладка за номером 0)
  (setq cur_lay_num (vla-get-taborder (vla-get-ActiveLayout ad)))
					;получили номер текущего листа
  (setq prev_lay_num (1- cur_lay_num))	;отняли от номера текущего листа 1, получили номер предыдущего листа
  (setq count (vla-get-Count lts))
  (if (= cur_lay_num 1)			;если мы находимся на первом листе, то предыдущей вкладкой будет Модель
    (setvar 'TILEMODE 1)		;переходим в Модель
  )
  (if (/= cur_lay_num 0)		;если наша вкладка не Модель, выполняется первый foreach
    (foreach i (layoutlist)		;выполняем цикл, подставляя в качестве i по очереди имя каждого листа (не модели!) по алфавиту
      (setq lay (vla-item lts i))	;по имени очередного листа из списка определяем указатель на него
      (setq i_lay_num (vla-get-taborder lay))
					;получаем номер нашего листа из списка (номер с учетом нулевого номера модели)
      (if (= i_lay_num prev_lay_num)	;если номер листа из списка совпал с номером предыдущего листа
	(setvar 'CTAB i)		;переменная CTAB принимает имя листа из списка, переключаемся на этот лист
      )
    )
    (foreach i (layoutlist)		;если наша вкладка - Модель, выполняется второй foreach, в котором мы ищем последнюю вкладку и переключаемся на нее
      (setq lay (vla-item lts i))
      (setq i_lay_num (vla-get-taborder lay))
      (if (= i_lay_num (1- count))
	(setvar 'CTAB i)
      )
    )
  )
  (princ)
)

(defun c:drz_laynext
       (/ ad lts i cur_lay_num next_lay_num lay i_lay_num count)
  (vl-load-com)
  (setq ad (vla-get-activedocument (vlax-get-acad-object)))
  (setq lts (vla-get-layouts ad))	;получили указатель на семейство вкладок (модель - вкладка за номером 0)
  (setq cur_lay_num (vla-get-taborder (vla-get-ActiveLayout ad)))
					;получили номер текущего листа
  (setq next_lay_num (1+ cur_lay_num))	;прибавили к номеру текущего листа 1, получили номер следующего листа
  (setq count (vla-get-Count lts))
  (if (= cur_lay_num (1- count))	;если мы находимся на последнем листе, то следующей вкладкой будет Модель
    (setvar 'TILEMODE 1)		;переходим в Модель
  )
  (foreach i (layoutlist)		;выполняем цикл, подставляя в качестве i по очереди имя каждого листа (не модели!) по алфавиту
    (setq lay (vla-item lts i))		;по имени очередного листа из списка определяем указатель на него
    (setq i_lay_num (vla-get-taborder lay))
					;получаем номер нашего листа из списка (номер с учетом нулевого номера модели)
    (if	(= i_lay_num next_lay_num)	;если номер листа из списка совпал с номером следующего листа
      (setvar 'CTAB i)			;переменная CTAB принимает имя листа из списка, переключаемся на этот лист
    )
  )
  (princ)
)