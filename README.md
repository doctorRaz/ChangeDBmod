# ChangeDBmod

Дополнение для nanoCAD и AutoCAD + СПДС CS / Механика CS, позволяющее переключать базы данных MultiCAD из командной строки.

> **Статус:** проект находится в разработке. Используйте на свой риск и проверяйте совместимость со своей версией CAD.

## Описание

ChangeDBmod добавляет команду:

`drz_changedb` — переключение базы данных MultiCAD.

В отличие от штатных команд `SPchangedb` и `MCchangedb`, команда доступна непосредственно из платформы. Также поддерживаются пути с пробелами.

Подробное техническое описание проекта: [DeepWiki](https://deepwiki.com/doctorRaz/ChangedbMod).

## Поддерживаемые CAD

| Проект | Назначение |
|---|---|
| `ChangeDBmod.NC` | загрузчик для nanoCAD 21–26 |
| `ChangeDBmod.NC.21.0` | сборка для nanoCAD 21–25 |
| `ChangeDBmod.NC.26.0` | сборка для nanoCAD 26 |
| `ChangeDBmod.AC2018` | AutoCAD 2018 и новее + СПДС CS / Механика CS |

### nanoCAD

Для nanoCAD в автозагрузку устанавливается `ChangeDBmod.NC.dll`. Загрузчик самостоятельно выбирает подходящую сборку для установленной версии nanoCAD.

Загрузка вручную:

`appload` → `ChangeDBmod.NC.dll`

### AutoCAD

Для AutoCAD используется:

`netload` → `ChangeDBmod.AC2018.0.dll`

## Использование

Команда:

```text
drz_changedb
```

### Примеры

Локальная SQL-база:

```lisp
(vl-cmdf "drz_changedb" "z:\\BD SQL\\nana\\std.mdf")
```

PostgreSQL:

```lisp
(vl-cmdf "drz_changedb" "pgsql:nspds240")
```

MS SQL:

```lisp
(vl-cmdf "drz_changedb" "SQL:SERVER:mc_spds9")
```

## Сборка из исходников

Решение: `ChangeDBmod.sln`.

Тестовый проект: `ChangeDBmod.Tests`.

Запуск тестов:

```powershell
dotnet test ChangeDBmod.Tests/ChangeDBmod.Tests.csproj
```

Для сборки решения:

```powershell
dotnet build ChangeDBmod.sln
```

Для разработки CAD-сборок должны быть доступны соответствующие зависимости и средства сборки .NET Framework.

## Автоматические сборки и публикация

В репозитории используются GitHub Actions:

- `ci.yml` — проверка сборки и тестов;
- `create-release-tag.yml` — создание release tag;
- `release.yml` — сборка и публикация релиза.

Готовые опубликованные версии доступны в разделе [Releases](https://github.com/oiltest90-dev/ChangeDBmod-dev/releases).

## Лицензия

Проект распространяется по лицензии [Apache License 2.0](LICENSE).
