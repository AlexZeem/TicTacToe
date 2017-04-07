*g++*:QMAKE_CXXFLAGS += -std=c++11

TEMPLATE = app

QT += qml quick widgets

PROJECT_ROOT_DIR = ./

BUILD_DIR   = $${PROJECT_ROOT_DIR}/bld
OBJECTS_DIR = $${BUILD_DIR}/obj
MOC_DIR     = $${BUILD_DIR}/moc
DESTDIR     = $${BUILD_DIR}/bin
RCC_DIR     = $${BUILD_DIR}/rcc

HEADERS += \

SOURCES += \
    $$PWD/src/*.cpp

QML_FILES += \
    $$PWD/res/qml/*.qml \
    $$PWD/res/qml/components/*.qml

JS_FILES += \
    $$PWD/res/helpers/*.js

DISTFILES += \
   $$QML_FILES \
   $$JS_FILES

RESOURCES += \
    icons.qrc
