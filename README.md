## Laboratory work VI

Данная лабораторная работа посвещена изучению средств пакетирования на примере **CPack**

```sh
$ open https://cmake.org/Wiki/CMake:CPackPackageGenerators
```

## Tasks

- [ ] 1. Создать публичный репозиторий с названием **lab06** на сервисе **GitHub**
- [ ] 2. Выполнить инструкцию учебного материала
- [ ] 3. Ознакомиться со ссылками учебного материала
- [ ] 4. Составить отчет и отправить ссылку личным сообщением в **Slack**

## Tutorial

```sh
$ export GITHUB_USERNAME=<имя_пользователя>

$ export GITHUB_EMAIL=<адрес_почтового_ящика>

$ alias edit=<nano|vi|vim|subl>

$ alias gsed=sed # for *-nix system
```

```sh
$ cd ${GITHUB_USERNAME}/workspace

$ pushd .

$ source scripts/activate
```

```sh
$ git clone https://github.com/Leikmadu/lab05 lab06
```

```sh
Cloning into 'lab06'...
remote: Enumerating objects: 167, done.
remote: Counting objects: 100% (167/167), done.
remote: Compressing objects: 100% (103/103), done.
Receiving objects:  60% (101/167), 116.00 KiB | 211.00 KiB/Receiving objects:  61% (102/167), 116.00 KiB | 211.00 KiB/Receiving objects:  62% (104/167), 116.00 KiB | 211.00 KiB/Receiving objects:  63% (106/167), 116.00 KiB | 211.00 KiB/Receiving objects:  64% (107/167), 116.00 KiB | 211.00 KiB/Receiving objects:  65% (109/167), 116.00 KiB | 211.00 KiB/Receiving objects:  66% (111/167), 116.00 KiB | 211.00 KiB/Receiving objects:  67% (112/167), 116.00 KiB | 211.00 KiB/Receiving objects:  68% (114/167), 116.00 KiB | 211.00 KiB/Receiving objects:  69% (116/167), 116.00 KiB | 211.00 KiB/Receiving objects:  70% (117/167), 116.00 KiB | 211.00 KiB/Receiving objects:  71% (119/167), 220.00 KiB | 208.00 KiB/Receiving objects:  72% (121/167), 220.00 KiB | 208.00 KiB/Receiving objects:  73% (122/167), 220.00 KiB | 208.00 KiB/Receiving objects:  74% (124/167), 220.00 KiB | 208.00 KiB/Receiving objects:  75% (126/167), 220.00 KiB | 208.00 KiB/Receiving objects:  76% (127/167), 220.00 KiB | 208.00 KiB/Receiving objects:  77% (129/167), 220.00 KiB | 208.00 KiB/Receiving objects:  78% (131/167), 220.00 KiB | 208.00 KiB/Receiving objects:  79% (132/167), 220.00 KiB | 208.00 KiB/Receiving objects:  80% (134/167), 220.00 KiB | 208.00 KiB/remote: Total 167 (delta 47), reused 165 (delta 45), pack-reused 0 (from 0)
Receiving objects:  81% (136/167), 220.00 KiB | 208.00 KiB/Receiving objects:  82% (137/167), 220.00 KiB | 208.00 KiB/Receiving objects:  83% (139/167), 220.00 KiB | 208.00 KiB/Receiving objects:  84% (141/167), 220.00 KiB | 208.00 KiB/Receiving objects:  85% (142/167), 220.00 KiB | 208.00 KiB/Receiving objects:  86% (144/167), 220.00 KiB | 208.00 KiB/Receiving objects:  87% (146/167), 220.00 KiB | 208.00 KiB/Receiving objects:  88% (147/167), 220.00 KiB | 208.00 KiB/Receiving objects:  89% (149/167), 220.00 KiB | 208.00 KiB/Receiving objects:  90% (151/167), 220.00 KiB | 208.00 KiB/Receiving objects:  91% (152/167), 220.00 KiB | 208.00 KiB/Receiving objects:  92% (154/167), 220.00 KiB | 208.00 KiB/Receiving objects:  93% (156/167), 220.00 KiB | 208.00 KiB/Receiving objects:  94% (157/167), 220.00 KiB | 208.00 KiB/Receiving objects:  95% (159/167), 220.00 KiB | 208.00 KiB/Receiving objects:  96% (161/167), 220.00 KiB | 208.00 KiB/Receiving objects:  97% (162/167), 220.00 KiB | 208.00 KiB/Receiving objects:  98% (164/167), 220.00 KiB | 208.00 KiB/Receiving objects:  99% (166/167), 220.00 KiB | 208.00 KiB/Receiving objects: 100% (167/167), 220.00 KiB | 208.00 KiB/Receiving objects: 100% (167/167), 230.56 KiB | 216.00 KiB/s, done.
Resolving deltas: 100% (47/47), done.
```

```
$ cd lab06

$ git remote remove origin

$ git remote add origin https://github.com/${GITHUB_USERNAME}/lab06
```

```sh
$ gsed -i '/project(print)/a\

set(PRINT_VERSION_STRING "v\${PRINT_VERSION}")

' CMakeLists.txt

$ gsed -i '/project(print)/a\

set(PRINT_VERSION\

  \${PRINT_VERSION_MAJOR}.\${PRINT_VERSION_MINOR}.\${PRINT_VERSION_PATCH}.\${PRINT_VERSION_TWEAK})

' CMakeLists.txt

$ gsed -i '/project(print)/a\

set(PRINT_VERSION_TWEAK 0)

' CMakeLists.txt

$ gsed -i '/project(print)/a\

set(PRINT_VERSION_PATCH 0)

' CMakeLists.txt

$ gsed -i '/project(print)/a\

set(PRINT_VERSION_MINOR 1)

' CMakeLists.txt

$ gsed -i '/project(print)/a\

set(PRINT_VERSION_MAJOR 0)

' CMakeLists.txt

$ git diff

```

```sh
$ touch DESCRIPTION && nano DESCRIPTION
```

```sh
Lab06 project: example of CPack usage.
```

```sh
$ touch ChangeLog.md

$ export DATE="`LANG=en_US date +'%a %b %d %Y'`"

$ cat > ChangeLog.md <<EOF

* ${DATE} ${GITHUB_USERNAME} <${GITHUB_EMAIL}> 0.1.0.0

- Initial RPM release

EOF
```

```sh
$ cat > CPackConfig.cmake <<EOF

include(InstallRequiredSystemLibraries)

EOF
```

```sh
$ cat >> CPackConfig.cmake <<EOF

set(CPACK_PACKAGE_CONTACT ${GITHUB_EMAIL})

set(CPACK_PACKAGE_VERSION_MAJOR \${PRINT_VERSION_MAJOR})

set(CPACK_PACKAGE_VERSION_MINOR \${PRINT_VERSION_MINOR})

set(CPACK_PACKAGE_VERSION_PATCH \${PRINT_VERSION_PATCH})

set(CPACK_PACKAGE_VERSION_TWEAK \${PRINT_VERSION_TWEAK})

set(CPACK_PACKAGE_VERSION \${PRINT_VERSION})

set(CPACK_PACKAGE_DESCRIPTION_FILE \${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static C++ library for printing")

EOF
```

```sh
$ cat >> CPackConfig.cmake <<EOF

set(CPACK_RESOURCE_FILE_LICENSE \${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)

set(CPACK_RESOURCE_FILE_README \${CMAKE_CURRENT_SOURCE_DIR}/README.md)

EOF
```

```sh
$ cat >> CPackConfig.cmake <<EOF

set(CPACK_RPM_PACKAGE_NAME "print-devel")

set(CPACK_RPM_PACKAGE_LICENSE "MIT")

set(CPACK_RPM_PACKAGE_GROUP "print")

set(CPACK_RPM_CHANGELOG_FILE \${CMAKE_CURRENT_SOURCE_DIR}/ChangeLog.md)

set(CPACK_RPM_PACKAGE_RELEASE 1)

EOF
```

```sh
$ cat >> CPackConfig.cmake <<EOF

set(CPACK_DEBIAN_PACKAGE_NAME "libprint-dev")

set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0")

set(CPACK_DEBIAN_PACKAGE_RELEASE 1)

EOF
```

```sh
$ cat >> CPackConfig.cmake <<EOF

include(CPack)

EOF
```

```sh
$ cat >> CMakeLists.txt <<EOF

include(CPackConfig.cmake)

EOF
```

```sh
$ gsed -i 's/lab05/lab06/g' README.md
```

```sh
$ git add .

$ git commit -m"added cpack config"
```

```sh
[main 90d4c76] Added cpack config
 5 files changed, 81 insertions(+), 26 deletions(-)
 create mode 100644 CPackConfig.cmake
 create mode 100644 ChangeLog.md
 create mode 100644 DESCRIPTION

```

```sh
$ git tag v0.1.0.0

$ git push origin main --tags
```

```sh
Enumerating objects: 174, done.
Counting objects: 100% (174/174), done.
Delta compression using up to 2 threads
Compressing objects: 100% (107/107), done.
Writing objects: 100% (174/174), 231.66 KiB | 38.61 MiB/s, done.
Total 174 (delta 50), reused 164 (delta 47), pack-reused 0
remote: Resolving deltas: 100% (50/50), done.
To https://github.com/Leikmadu/lab06
 * [new branch]      main -> main
 * [new tag]         v0.1.0.0 -> v0.1.0.0

```

```sh
$ mkdir -p .github/workflows

$ nano .github/workflows/ci.yml
```

```sh
name: CI

on: [push, pull_request]  # Запускать при пуше и создании pull request

jobs:
  build:
    runs-on: ubuntu-latest  # Используем последнюю версию Ubuntu

    steps:
    - uses: actions/checkout@v4  # "Выкачиваем" код из репозитория

    - name: Configure
      run: cmake -B build -DCMAKE_BUILD_TYPE=Release

    - name: Build
      run: cmake --build build --config Release

    - name: Package with CPack
      run: cpack --config build/CPackConfig.cmake -G DEB  # Упаковываем в .deb

    - name: Upload Artifact
      uses: actions/upload-artifact@v4  # Сохраняем готовый пакет как артефакт сборки
      with:
        name: my-project-package
        path: build/*.deb
```

```sh
$ touch LICENSE
```

```sh
$ cmake -H. -B_build
```

```sh
-- The C compiler identification is GNU 13.3.0
-- The CXX compiler identification is GNU 13.3.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done (1.0s)
-- Generating done (0.0s)
-- Build files have been written to: /home/kirill/Desktop/Leikmadur/workspace/lab06/_build

```


```sh
$ cmake --build _build
```

```sh
[ 33%] Building CXX object banking/CMakeFiles/banking.dir/Account.cpp.o
[ 66%] Building CXX object banking/CMakeFiles/banking.dir/Transaction.cpp.o
[100%] Linking CXX static library libbanking.a
[100%] Built target banking

```

```sh
$ cd _build

$ cpack -G "TGZ"
```

```sh
CPack: Create package using TGZ
CPack: Install projects
CPack: - Run preinstall target for: lab05
CPack: - Install project: lab05 []
CPack: Create package
CPack: - package: /home/kirill/Desktop/Leikmadur/workspace/lab06/_build/lab05-0.1.1-Linux.tar.gz generated.

```

```sh
$ cd ..
```

```sh
$ cmake -H. -B_build -DCPACK_GENERATOR="TGZ"
```

```sh
-- Configuring done (0.0s)
-- Generating done (0.0s)
-- Build files have been written to: /home/kirill/Desktop/Leikmadur/workspace/lab06/_build

```

```sh
$ cmake --build _build --target package
```

```sh
[100%] Built target banking
Run CPack packaging tool...
CPack: Create package using TGZ
CPack: Install projects
CPack: - Run preinstall target for: lab05
CPack: - Install project: lab05 []
CPack: Create package
CPack: - package: /home/kirill/Desktop/Leikmadur/workspace/lab06/_build/lab05-0.1.1-Linux.tar.gz generated.

```

```sh
$ mv _build/*.tar.gz artifacts

$ tree artifacts
```

```sh

artifacts
├── lab05-0.1.1-Linux.tar.gz
└── screenshot.png
locales-launch: Data of en_US locale not found, generating, please wait...
artifacts
├── lab05-0.1.1-Linux.tar.gz
└── screenshot.png
1 directory, 2 files

```

## Report

```sh
$ popd

$ export LAB_NUMBER=06

$ git clone https://github.com/tp-labs/lab${LAB_NUMBER} tasks/lab${LAB_NUMBER}

$ mkdir reports/lab${LAB_NUMBER}

$ cp tasks/lab${LAB_NUMBER}/README.md reports/lab${LAB_NUMBER}/REPORT.md

$ cd reports/lab${LAB_NUMBER}

$ edit REPORT.md

$ gist REPORT.md
```

## Homework

После того, как вы настроили взаимодействие с системой непрерывной интеграции,</br>
обеспечив автоматическую сборку и тестирование ваших изменений, стоит задуматься</br>
о создание пакетов для измениний, которые помечаются тэгами (см. вкладку [releases](https://github.com/tp-labs/lab06/releases)).</br>
Пакет должен содержать приложение _solver_ из [предыдущего задания](https://github.com/tp-labs/lab03#задание-1)
Таким образом, каждый новый релиз будет состоять из следующих компонентов:
- архивы с файлами исходного кода (`.tar.gz`, `.zip`)
- пакеты с бинарным файлом _solver_ (`.deb`, `.rpm`, `.msi`, `.dmg`)

В качестве подсказки:
```sh
$ cat .travis.yml
os: osx
script:
...
- cpack -G DragNDrop # dmg

$ cat .travis.yml
os: linux
script:
...
- cpack -G DEB # deb

$ cat .travis.yml
os: linux
addons:
  apt:
    packages:
    - rpm
script:
...
- cpack -G RPM # rpm

$ cat appveyor.yml
platform:
- x86
- x64
build_script:
...
- cpack -G WIX # msi
```

Для этого нужно добавить ветвление в конфигурационные файлы для **CI** со следующей логикой:</br>
если **commit** помечен тэгом, то необходимо собрать пакеты (`DEB, RPM, WIX, DragNDrop, ...`) </br>
и разместить их на сервисе **GitHub**. (см. пример для [Travi CI](https://docs.travis-ci.com/user/deployment/releases))</br>


1. Обновляем CPackConfig.cmake для всех форматов

```sh
cat > CPackConfig.cmake <<'EOF'
include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT ${GITHUB_EMAIL})
set(CPACK_PACKAGE_VERSION_MAJOR ${PRINT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PRINT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PRINT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${PRINT_VERSION_TWEAK})
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static C++ library for printing")

set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

# Настройки для RPM
set(CPACK_RPM_PACKAGE_NAME "print-devel")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_GROUP "Development/Tools")
set(CPACK_RPM_CHANGELOG_FILE ${CMAKE_CURRENT_SOURCE_DIR}/ChangeLog.md)
set(CPACK_RPM_PACKAGE_RELEASE 1)

# Настройки для DEB
set(CPACK_DEBIAN_PACKAGE_NAME "libprint-dev")
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)
set(CPACK_DEBIAN_PACKAGE_DEPENDS "build-essential")
set(CPACK_DEBIAN_PACKAGE_SECTION "libdevel")

# Настройки для WIX (Windows)
set(CPACK_WIX_UPGRADE_GUID "12345678-1234-1234-1234-123456789012")
set(CPACK_WIX_PRODUCT_ICON "${CMAKE_CURRENT_SOURCE_DIR}/icon.ico")
set(CPACK_WIX_LICENSE_RTF "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.rtf")

# Настройки для DragNDrop (macOS)
set(CPACK_DMG_BACKGROUND_IMAGE "${CMAKE_CURRENT_SOURCE_DIR}/background.png")
set(CPACK_DMG_VOLUME_NAME "print-installer")

include(CPack)
EOF

```
2. Создаем LICENSE.rtf для WIX

```sh

cat > LICENSE.rtf <<'EOF'
{\rtf1\ansi\deff0 {\fonttbl {\f0 Times New Roman;}}\f0\fs24
\b MIT License\b0\line
\line
Copyright (c) 2025 Leikmadu\line
\line
Permission is hereby granted, free of charge, to any person obtaining a copy\line
of this software and associated documentation files (the "Software"), to deal\line
in the Software without restriction, including without limitation the rights\line
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\line
copies of the Software, and to permit persons to whom the Software is\line
furnished to do so, subject to the following conditions:\line
\line
The above copyright notice and this permission notice shall be included in all\line
copies or substantial portions of the Software.\line
\line
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\line
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\line
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\line
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\line
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\line
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\line
SOFTWARE.\line
}
EOF

```
3. Обновляем .github/workflows/ci.yml для создания релизов

```sh

cat > .github/workflows/ci.yml <<'EOF'
name: Create Release Packages

on:
  push:
    tags:
      - 'v*'
  pull_request:
    branches: [ master, main ]

jobs:
  build_linux:
    name: Build Linux packages (deb, rpm)
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          submodules: recursive

      - name: Install RPM build tools
        run: sudo apt-get update && sudo apt-get install -y rpm

      - name: Configure CMake
        run: cmake -B build -DCMAKE_BUILD_TYPE=Release

      - name: Build
        run: cmake --build build --config Release

      - name: Package DEB
        run: cd build && cpack -G DEB -C Release

      - name: Package RPM
        run: cd build && cpack -G RPM -C Release

      - name: Upload Linux packages
        uses: actions/upload-artifact@v4
        with:
          name: linux-packages
          path: |
            build/*.deb
            build/*.rpm

  build_windows:
    name: Build Windows package (msi)
    runs-on: windows-latest
    steps:
      - uses: actions/checkout@v4
        with:
          submodules: recursive

      - name: Configure CMake
        run: cmake -B build -DCMAKE_BUILD_TYPE=Release

      - name: Build
        run: cmake --build build --config Release

      - name: Package MSI (WIX)
        run: cd build && cpack -G WIX -C Release

      - name: Upload artifact
        uses: actions/upload-artifact@v4
        with:
          name: windows-package
          path: build/*.msi

  build_macos:
    name: Build macOS package (dmg)
    runs-on: macos-latest
    steps:
      - uses: actions/checkout@v4
        with:
          submodules: recursive

      - name: Configure CMake
        run: cmake -B build -DCMAKE_BUILD_TYPE=Release

      - name: Build
        run: cmake --build build --config Release

      - name: Package DMG (DragNDrop)
        run: cd build && cpack -G DragNDrop -C Release

      - name: Upload artifact
        uses: actions/upload-artifact@v4
        with:
          name: macos-package
          path: build/*.dmg

  create_release:
    name: Create GitHub Release and upload assets
    needs: [build_linux, build_windows, build_macos]
    runs-on: ubuntu-latest
    if: startsWith(github.ref, 'refs/tags/')
    permissions:
      contents: write
    steps:
      - name: Download all artifacts
        uses: actions/download-artifact@v4
        with:
          path: artifacts

      - name: List files
        run: ls -R artifacts

      - name: Create Release
        uses: softprops/action-gh-release@v2
        with:
          files: |
            artifacts/linux-packages/*.deb
            artifacts/linux-packages/*.rpm
            artifacts/windows-package/*.msi
            artifacts/macos-package/*.dmg
          draft: false
          prerelease: false
          generate_release_notes: true
EOF
```
4. Добавляем установку solver в корневой CMakeLists.txt

```sh

cat >> CMakeLists.txt <<'EOF'

# Установка исполняемых файлов
install(TARGETS solver DESTINATION bin)
install(TARGETS hello_world DESTINATION bin)
install(TARGETS banking DESTINATION lib)
install(FILES banking/Account.h banking/Transaction.h DESTINATION include)
EOF
```


5. Вставляем такой текст в LICENSE:

```sh
MIT License

Copyright (c) 2026 Leikmadu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```



6. Коммитим и пушим изменения

```sh
$ git add .

$ git commit -m "Add full CPack configuration for DEB, RPM, MSI, DMG"
```

```sh
[main fc89d10] Add full CPack configuration for DEB, RPM, MSI, DMG
 6 files changed, 140 insertions(+), 46 deletions(-)
 create mode 100644 LICENSE
 create mode 100644 LICENSE.rtf
 create mode 100644 artifacts/lab05-0.1.1-Linux.tar.gz
```

```sh
$ git push origin main
```

```sh
Enumerating objects: 17, done.
Counting objects: 100% (17/17), done.
Delta compression using up to 2 threads
Compressing objects: 100% (7/7), done.
Writing objects: 100% (10/10), 2.77 KiB | 2.77 MiB/s, done.
Total 10 (delta 3), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/Leikmadu/lab06
   90d4c76..fc89d10  main -> main
```

7. Cоздаем тэг:

```sh
$ git tag v1.0.4
```

```sh
$ git push origin v1.0.4
```

```sh
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/Leikmadu/lab06
 * [new tag]         v1.0.4 -> v1.0.4
```

```
Copyright (c) 2015-2021 The ISC Authors
```
