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
| `ChangeDBmod.MultiCad` | переключение баз MultiCAD для nanoCAD 21+ |
| `ChangeDBmod.AC2018` | переключение баз MultiCAD для AutoCAD 2018+ |
| `ChangeDBmod.Tests` | автоматические тесты |
| `MulticadInterop` | общая вспомогательная библиотека для взаимодействия с API MultiCAD |

Проект `ChangeDBmod.Tests` используется для сборки и запуска тестов и не входит в публикуемые CAD-сборки.

### nanoCAD

`ChangeDBmod.MultiCad` использует API MultiCAD напрямую. Вызовы специфичных методов MultiCAD, для которых требуется совместимость между версиями API, вынесены в `MulticadInterop`.

Проект собирается под `.NET Framework 4.8` и использует пакет `MultiCAD.NET` версии 21.0.5699.3427.

### AutoCAD

`ChangeDBmod.AC2018` использует штатный API AutoCAD для регистрации команды и получения строки из командной строки. Взаимодействие с MultiCAD выполняется через `MulticadInterop`.

Проект собирается под `.NET Framework 4.8` и использует пакет `AutoCAD.NET` версии 22.0.0.

Команда проверена на AutoCAD 2025 и 2026. На AutoCAD 2024 + СПДС 2024 работоспособность не подтверждена, см. [issue #25](https://github.com/oiltest90-dev/ChangeDBmod-dev/issues/25).

## MultiCAD Interop

`MulticadInterop` — отдельная вспомогательная библиотека для взаимодействия с API MultiCAD.

Она содержит общий для CAD-сборок код, связанный с вызовами MultiCAD, которые нельзя надёжно использовать напрямую из-за различий API между версиями nanoCAD.

В частности, через Interop выполняются вызовы параметров MultiCAD и уведомлений. Основная логика команд при этом остаётся в соответствующем CAD-проекте.

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

В решении находятся два CAD-проекта, вспомогательная библиотека `MulticadInterop` и тестовый проект `ChangeDBmod.Tests`.

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
- `create-release-tag.yml` — создание release tag после слияния PR;
- `release.yml` — сборка и публикация релиза.

Все проекты решения участвуют в обычных `restore/build/test`. При публикации используются только проекты, явно указанные в секции `publish` файла `.github/release-settings/release.config.json`.

Таким образом, наличие проекта в решении само по себе не означает его публикацию. Например, `ChangeDBmod.Tests` и `MulticadInterop` участвуют в сборке, но в релиз как отдельные публикуемые проекты не включены.

### Запуск публикации

Публикация может быть запущена двумя способами:

1. **Через PR с label `publish`.**
   
   После слияния PR в одну из веток `master`, `develop` или `test/master` workflow `create-release-tag.yml` проверяет наличие label `publish`. Если PR был действительно слит и label присутствует, workflow автоматически создаёт release tag и явно запускает `release.yml` для этого тега.

2. **Push release tag.**
   
   Workflow `release.yml` запускается при push тега, соответствующего шаблонам:
   
   ```text
   *-release*
   *-mandatory*
   ```
   
   Дополнительно workflow проверяет имя продукта и формат тега. Имя продукта берётся из свойства `solution` в `.github/release-settings/release.config.json`. Для текущего проекта используются теги вида:
   
   ```text
   <Product>_<Major.Minor>-release<number>
   <Product>_<Major.Minor>-mandatory<number>
   ```
   
   Например:
   
   ```text
   ChangeDBmod_0.6-release1
   ChangeDBmod_0.7-mandatory1
   ```
   
   Тег должен указывать на нужный commit. При ручном push подходящего тега `release.yml` выполняет полный цикл проверки, сборки, тестирования и публикации.

В штатном сценарии тег создаётся автоматически после слияния PR с label `publish`. Тип тега (`release` или `mandatory`) и его номер определяются workflow на основании версии проекта и существующих release-тегов.

Готовые опубликованные версии доступны в разделе [Releases](https://github.com/oiltest90-dev/ChangeDBmod-dev/releases).

## Лицензия

Проект распространяется по лицензии [MIT License](LICENSE).
