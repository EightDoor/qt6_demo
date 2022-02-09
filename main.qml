import QtQuick
import QtQuick.Controls
import Qt.labs.platform

import "demo"
import "demo/Animations"
import "demo/BaseModel"

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    background: Rectangle {
        color: "darkGray"
    }

    header: ToolBar {
        Flow {
            anchors.fill: parent
            ToolButton {
                text: "Open"
                icon.name: "document-open"
                onClicked: fileOpenDialog.open()
            }
        }
    }

    FileDialog {
        id: fileOpenDialog
        title: "Select an image file"
        folder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
        nameFilters: [
            "Image files (*.png *.jpeg *.jpg)",
        ]
        onAccepted: {
            image.source = fileOpenDialog.fileUrl
        }
    }


    //    DemoRect {
    //        id: demoRect
    //    }

    //    DemoCore {
    //        id: demoCoreRect
    //    }

    //    Components {
    //        id: components
    //    }

    //     Item {
    //         ComponentsButton {
    //             id: componentsButton
    //             x: 12
    //             y: 12
    //             text: "Start"
    //             onClicked:  {
    //                 status.text = "Button clicked!";
    //             }
    //         }
    //         Text {
    //             id: status
    //             x: 12
    //             y: 76
    //             width: 116
    //             height: 26
    //             text: "waiting..."
    //             horizontalAlignment: Text.AlignHCenter
    //         }
    //     }

    //    SimpleTransformations {
    //        id: simpleTransformations
    //    }

    //      Positioning {
    //          id: positioning
    //      }

    //    DemoInput {
    //        id: demoInput
    //    }

    //    DemoAnimations {
    //        id: demoAnimations
    //    }


//    DemoModels {
//        id: demoModels
//    }

//    DynamicViews {
//        id: dynamicViews
//    }

//    DemoDelegate {
//        id: demoDelegate
//    }

//    PlayAudio {
//        id: playAudio
//    }

//    PlayVideo {
//        width: 500
//        height: 500
//        id: playVideo
//    }

//    Loader {
//        id: loaderRemote
//        source: "http://zykj.start6.cn/Remote.qml#" + new Date().getTime()
//        onLoaded: {
//            loaderRemote.width = item.width
//            loaderRemote.height = item.height
//        }
//    }

//    DemoRequest {
//        id: demoRequest
//    }

//    DemoWeSocket {
//        id: demoWeSocket
//    }

     CreatingAndDestroyObject {
         id: creatingAndDestroyObject
     }
}
