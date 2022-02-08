cmake_minimum_required(VERSION 3.16)

project(qt6_demo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appqt6_demo
    main.cpp
)

qt_add_qml_module(appqt6_demo
    URI qt6_demo
    VERSION 1.0
    QML_FILES main.qml 
)

target_compile_definitions(appqt6_demo
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appqt6_demo
    PRIVATE Qt6::Quick)
