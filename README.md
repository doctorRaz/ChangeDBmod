# ChangeDBmod

Дополнение для nanoCAD и AutoCAD + СПДС CS / Механика CS, позволяющее переключать базы данных MultiCAD из командной строки.

> **Статус:** проект находится в разработке. Используйте на свой риск и проверяйте совместимость со своей версией CAD.

## Описание

ChangeDBmod добавляет команду:

`drz_changedb` — переключение базы данных MultiCAD.

В отличие от штатных команд `SPchangedb` и `MCchangedb`, команда доступна непосредственно из платформы. Также поддерживаются пути с пробелами.

Подробное техническое описание проекта: [DeepWiki](https://deepwiki.com/doctorRaz/ChangedbMod).

## Поддерживаемые CAD

В текущем решении находятся отдельные проекты для поддерживаемых CAD-платформ:

| Проект | Назначение |
|---|---|
| `ChangeDBmod.NC.21+` | переключение баз MultiCAD для nanoCAD 21+ |
| `ChangeDBmod.AC2018+` | переключение баз MultiCAD для AutoCAD 2018+ |
| `ChangeDBmod.Tests` | автоматические тесты |

Проект `ChangeDBmod.Tests` используется для сборки и запуска тестов и не входит в публикуемые CAD-сборки.

### nanoCAD

Проект `ChangeDBmod.NC.21+` собирается под `.NET Framework 4.6.2` и использует `nanoCAD.Platform.NET` версии 21.0.5699.3427.

### AutoCAD

Проект `ChangeDBmod.AC2018+` собирается под `.NET Framework 4.8` и использует пакет `AutoCAD.NET` версии 22.0.0.

## MultiCAD Interop

Работа с методами MultiCAD вынесена в отдельный слой **MultiCAD Interop**.

Этот слой изолирует взаимодействие с API MultiCAD от основной логики ChangeDBmod. Это позволяет обращаться к необходимым методам MultiCAD через единый интерфейс взаимодействия и не смешивать код работы с API CAD с логикой переключения базы данных.

Изменения, связанные с API MultiCAD, следует вносить в слой Interop, сохраняя основную логику ChangeDBmod независимой от конкретного способа вызова методов MultiCAD.

## Использование

Команда:

`drz_changedb`

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

В решении находятся CAD-проекты и тестовый проект `ChangeDBmod.Tests`.

Запуск тестов:

```powershell
dotnet test ChangeDBmod.Tests/ChangeDBmod.Tests.csproj
```

Сборка всего решения:

```powershell
dotnet build ChangeDBmod.sln
```

Для сборки CAD-проектов должны быть доступны соответствующие зависимости и средства сборки .NET Framework.

## Автоматические сборки и публикация

В репозитории используются GitHub Actions:

- `ci.yml` — восстановление зависимостей, сборка всего решения и запуск тестов;
- `create-release-tag.yml` — создание release tag;
- `release.yml` — сборка и публикация релиза.

Все проекты решения участвуют в обычных `restore/build/test`. При публикации используются только проекты, явно указанные в секции `publish` файла `.github/release-settings/release.config.json`.

Таким образом, наличие проекта в решении само по себе не означает его публикацию. Например, `ChangeDBmod.Tests` собирается и тестируется, но в релиз не публикуется.

Готовые опубликованные версии доступны в разделе [Releases](https://github.com/oiltest90-dev/ChangeDBmod-dev/releases).

## Лицензия

Проект распространяется по лицензии [MIT License](LICENSE).
