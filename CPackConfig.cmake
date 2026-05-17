include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_NAME "lab06")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Quadratic equation solver and printing library")
set(CPACK_PACKAGE_CONTACT "leikmadu@users.noreply.github.com")
set(CPACK_PACKAGE_VENDOR "Leikmadu")

set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

# Указываем, какие файлы устанавливать
set(CPACK_INSTALL_CMAKE_PROJECTS "${CMAKE_BINARY_DIR};lab06;ALL;/")

# DEB пакет
set(CPACK_DEBIAN_PACKAGE_NAME "solver")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Quadratic equation solver")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER ${CPACK_PACKAGE_CONTACT})

# RPM пакет
set(CPACK_RPM_PACKAGE_NAME "solver")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_GROUP "Development/Tools")

# Базовые генераторы
set(CPACK_GENERATOR "TGZ;ZIP")

include(CPack)
