QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    dialog.cpp

HEADERS += \
        dialog.h \

FORMS += \
    dialog.ui

TRANSLATIONS += \
    primeslistDialog_ru_RU.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

CONFIG(release, debug|release) { BUILDTYPE = release }
CONFIG(debug, debug|release) { BUILDTYPE = debug }
QMAKE_POST_LINK = windeployqt $$shell_quote($${OUT_PWD}/$${BUILDTYPE}/$${TARGET}.exe)


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/ -lLibPrimeslist
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/ -lLibPrimeslist
else:unix: LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/ -lLibPrimeslist

INCLUDEPATH += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug
DEPENDPATH += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/libLibPrimeslist.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/libLibPrimeslist.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/LibPrimeslist.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/LibPrimeslist.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/libLibPrimeslist.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/ -lLibPrimeslist
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/ -lLibPrimeslist
else:unix: LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/ -lLibPrimeslist

INCLUDEPATH += $$PWD/../../../Documents/LibPrimeslist
DEPENDPATH += $$PWD/../../../Documents/LibPrimeslist

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/libLibPrimeslist.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/libLibPrimeslist.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/LibPrimeslist.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/LibPrimeslist.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/libLibPrimeslist.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/ -lLibPrimeslist
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/ -lLibPrimeslist
else:unix: LIBS += -L$$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/ -lLibPrimeslist

INCLUDEPATH += $$PWD/../../../Documents/LibPrimeslist
DEPENDPATH += $$PWD/../../../Documents/LibPrimeslist

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/libLibPrimeslist.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/libLibPrimeslist.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/release/LibPrimeslist.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/debug/LibPrimeslist.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../Documents/build-LibPrimeslist-Desktop-Debug/libLibPrimeslist.a
