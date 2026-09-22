# ChangeDBmod
>Disclaimer \
[В начале разработки]

Вы тестируете этот код на свой страх и риск\
Если что то поломается я не виноват

 ## [Описание проекта](https://deepwiki.com/doctorRaz/ChangedbMod) [![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/doctorRaz/ChangedbMod)
 
## Сборки для:
- `ChangeDBmod.NC` загрузчик сборок для nanoCad 21-26 
	> независимо от версии nanoCad в автозагрузку включаем только его, он сам загрузит подходящую сборку nanoCad
- `ChangeDBmod.NC.21.0` nanoCad 21-25
- `ChangeDBmod.NC.26.0` nanoCad 26
- `ChangedbMod.AC.2018.0` AutoCAD 2018 и новее + c _СПДС CS_ или _Механика CS_

### Загрузить сборку для своего CAD
- nanoCAD `appload`  -> `ChangeDBmod.NC.dll`
- AutoCAD `netload` ->`ChangedbMod.AC.2018.0.dll`
  
## Назначение: переключение между базами данных MultiCAD
 ### Вызов 
 > `drz_changedb`	Переключение базы данных MultiCAD

### Пример использования
```
;база local SQL
(vl-cmdf "drz_changedb" "z:\\BD SQL\\nana\\std.mdf")

;PostgreSQL
(vl-cmdf "drz_changedb" "pgsql:nspds240")

; MS SQL
(vl-cmdf "drz_changedb" "SQL:SERVER:mc_spds9")
```

### Зачем я заморочился?

naanoCAD и AutoCAD +СПДС CS умеют переключать базу стандартных из ком строки, но это доступно только из СПДС или Механики, команды соответственно  `SPchangedb` и `MCchangedb`, из платформы недоступно.\
Кроме этого в штатной команде есть баг: не принимает пути с пробелом.

Этот аддон лишен этого недостатка и дает возможность пользователям платформы переключать базы Multicad из ком строки.




