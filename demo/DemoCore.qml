import QtQuick

Item {
    Rectangle {
        id: rect1
        x: 12
        y: 12
        width: 76
        height: 96
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "slategray" }
        }
        border.color: "slategray"
    }
    Rectangle {
        id: rect2
        x: 112
        y: 12
        width: 76
        height: 96
        border.color: "lightsteelblue"
        border.width: 4
        radius: 8
    }
    Text {
        id: labelText
        text: "A very long text"
        width: 40
        height: 120
        elide: Text.ElideMiddle
        style: Text.Sunken
        styleColor: "#FF4444"
        verticalAlignment: Text.AlignTop
    }

    Image {
        id: img1
        x: 12
        y: 12
        source: "/images/1.png"
    }
    Image {
        id: img2
        height: 72 / 2
        source: "/images/1.png"
        fillMode: Image.PreserveAspectCrop
        clip: true
    }

    Rectangle {
        x: 100
        y: 100
        width: 300
        height: 300
        border.width: 1
        border.color: "red"
        Text {
            id: text1
            text: rect2.visible? "显示": "隐藏"
        }
        MouseArea {
            id: area
            width: parent.width
            height: parent.height
            onClicked: rect2.visible = !rect2.visible
        }
    }
}
