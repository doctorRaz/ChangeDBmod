# ChangeDBmod 0.6

ChangeDBmod — дополнение для работы с базами данных MultiCAD из командной строки CAD.

## Поддерживаемые CAD

- **nanoCAD 21+** — `ChangeDBmod.NC.21+`
- **AutoCAD 2018+** — `ChangeDBmod.AC2018+`

## Возможности

- Переключение текущей базы данных MultiCAD командой `drz_changedb`.
- Поддержка локальных баз данных по пути к файлу `.mdf`.
- Подключение к базам PostgreSQL и MS SQL.
- Передача путей и значений, содержащих пробелы.
- Использование API ChangeDBmod из других .NET-сборок без прямой зависимости от конкретной версии API MultiCAD.

### Пример

```lisp
(vl-cmdf "drz_changedb" "z:\\BD SQL\\nana\\std.mdf")
```

Также API можно использовать непосредственно из другой сборки:

```csharp
drz.ChangeDBmod.ChangeDBmodApi.SetParam(value, 9);
```
