import QtQuick

Grid {
    Image {
        width: 500
        height: 500
        id: root
        source: "/images/1.png"

        property int padding: 40
        property int  duration: 4000
        property bool running: false

        Image {
            width: 100
            height: 100
            id: box
            x: root.padding
            y: (root.height - height) / 2
            source: "/images/2.png"

            NumberAnimation on x {
                to: root.width - box.width - root.padding
                duration: root.duration
                running: root.running
            }

            RotationAnimation on rotation {
                to: 360
                duration: root.duration
                running: root.running
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: root.running = true
        }
    }

    ClickableImageV2 {
        width: 100
        height: 100
        id: greenBox
        x: 200
        y: root.height - height
        source: "/images/1.png"
        text: "animation on property"

        NumberAnimation on y {
            to: 40
            duration: 4000
        }
    }

    EasingCurves {
        id: easingCurves
    }
}
