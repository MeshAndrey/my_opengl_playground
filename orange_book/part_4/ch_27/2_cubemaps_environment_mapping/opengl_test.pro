TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        glad.c \
        main.cpp \
        stb_image.cpp


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../gl_test/learnopengl/lib/ -lglfw3
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../gl_test/learnopengl/lib/ -lglfw3d
else:unix: LIBS += -L$$PWD/../gl_test/learnopengl/lib/ -lglfw3 -lGL -lX11 -lXrandr -lXi -lXxf86vm -lassimp

INCLUDEPATH += $$PWD/../gl_test/learnopengl/includes/GLFW
DEPENDPATH += $$PWD/../gl_test/learnopengl/includes/GLFW

HEADERS += \
    camera.h \
    glad.h \
    khrplatform.h \
    mesh.h \
    model.h \
    shader.h \
    shader_m.h \
    stb_image.h


