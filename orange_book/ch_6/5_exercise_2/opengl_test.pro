TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

HEADERS += \
    glad.h \
    khrplatform.h \
    shader_s.h

SOURCES += \
        glad.c \
        main.cpp


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../gl_test/learnopengl/lib/ -lglfw3
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../gl_test/learnopengl/lib/ -lglfw3d
else:unix: LIBS += -L$$PWD/../gl_test/learnopengl/lib/ -lglfw3 -lGL -lX11 -lXrandr -lXi -lXxf86vm

INCLUDEPATH += $$PWD/../gl_test/learnopengl/includes/GLFW
DEPENDPATH += $$PWD/../gl_test/learnopengl/includes/GLFW
