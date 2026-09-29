# ChangeDBmod

> [!CAUTION]
> проект предназначен для использования в nanoCAD и AutoCAD. Перед использованием рекомендуется проверить работу команды на вашей конфигурации CAD и MultiCAD.

## Назначение

ChangeDBmod позволяет переключать базу данных MultiCAD непосредственно из командной строки CAD.

Команда:

`drz_changedb`

При выполнении команды необходимо указать значение базы данных. Ввод поддерживает пробелы.

## Поддерживаемые CAD

### nanoCAD

`ChangeDBmod.MultiCad` — сборка для nanoCAD 21 и новее.
Протестировано на nanoCAD 21–26.

Загрузка выполняется стандартной командой `APPLOAD`.

### AutoCAD

`ChangeDBmod.AC2018` — сборка для AutoCAD 2018 и новее.
Необходим СПДС CS соответствующей версии.
Протестировано на AutoCAD 2025 и 2026.
На AutoCAD 2024 + СПДС CS 2024 работоспособность не подтверждена, см. issue #25.
Загрузка выполняется стандартной командой `NETLOAD`.

## Примеры использования

Команду можно вызвать непосредственно из командной строки CAD или из AutoLISP.

### Локальная база

```lisp
(vl-cmdf "drz_changedb" "z:\BD SQL\nana\std.mdf")
```

Путь может содержать пробелы.

### PostgreSQL

```lisp
(vl-cmdf "drz_changedb" "pgsql:nspds240")
```

### MS SQL

```lisp
(vl-cmdf "drz_changedb" "SQL:SERVER:mc_spds9")
```

## Как работает команда

После запуска `drz_changedb` ChangeDBmod запрашивает значение базы MultiCAD и передаёт его в API MultiCAD.

В nanoCAD команда использует API MultiCAD. В AutoCAD используется штатный API AutoCAD для работы с командной строкой, после чего значение передаётся в MultiCAD.

Команда предназначена для работы непосредственно из платформы CAD и не требует вызова внутренних API MultiCAD из пользовательского кода.

## Пример вызова из C#

Если требуется выполнить переключение из собственного приложения или плагина, рекомендуется вызывать команду `drz_changedb`, а не использовать внутренний механизм ChangeDBmod напрямую:

```csharp
/// <summary>
/// Устанавливает параметр Multicad.
/// </summary>
/// <param name="value">Значение параметра.</param>
/// <param name="parameter">Идентификатор параметра Multicad.</param>
/// <exception cref="InvalidOperationException">
/// Возникает, если API Multicad не найден в загруженных сборках.
/// </exception>

 MulticadParamManager.SetParam(string value, int parameter); // Передача команды CAD с требуемым значением.
```
