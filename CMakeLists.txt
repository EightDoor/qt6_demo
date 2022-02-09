cmake_minimum_required(VERSION 3.16)

project(qt6_demo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
# 设置自动处理.qrc文件
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_CXX_STANDARD 17)

find_package(Qt6 6.2 COMPONENTS Core Gui Qml Multimedia Quick  REQUIRED)

qt_add_executable(appqt6_demo
    main.cpp
    assets.qrc
)


qt_add_qml_module(appqt6_demo
    URI qt6_demo
    VERSION 1.0
    QML_FILES
    main.qml
    demo/DemoRect.qml
    demo/DemoCore.qml
    demo/Components.qml
    demo/ComponentsButton.qml
    demo/SimpleTransformations.qml
    demo/DemoSimpleImage.qml
    demo/Positioning.qml
    demo/Square.qml
    demo/DemoInput.qml
    demo/DemoInputCom.qml
    demo/DemoKeys.qml
    demo/Animations/DemoAnimations.qml
    demo/Animations/ClickableImageV2.qml
    demo/Animations/EasingCurves.qml
    demo/BaseModel/DemoModels.qml
    demo/BaseModel/DynamicViews.qml
    demo/BaseModel/DemoDelegate.qml
    demo/PlayAudio.qml
    demo/PlayVideo.qml
    demo/DemoRequest.qml
    demo/DemoWeSocket.qml
    demo/CreatingAndDestroyObject.qml
    demo/js/create-component.js
    demo/js/dynamic-image.qml
)

target_compile_definitions(appqt6_demo
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appqt6_demo
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Core
    PRIVATE Qt6::Gui
    PRIVATE Qt6::Qml
    PRIVATE Qt6::Multimedia
    )
