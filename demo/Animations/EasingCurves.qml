// parallelanimation.qml
import QtQuick

Rectangle {
    id: root
    width: 600
    height: 400
    property int duration: 3000
    property Item ufo: ufo

    Image {
        anchors.fill: parent
        source: "/images/2.png"
    }


    ClickableImageV2 {
        id: ufo
        x: 20; y: root.height-height
        text: 'ufo'
        source: "/images/2.png"
        onClicked: anim.restart()
    }

    ParallelAnimation {
        id: anim
        NumberAnimation {
            target: ufo
            properties: "y"
            to: 20
            duration: root.duration
        }
        NumberAnimation {
            target: ufo
            properties: "x"
            to: 160
            duration: root.duration
        }
    }
}
