import QtQuick

// https://www.qt.io/product/qt6/qml-book/ch04-qmlstart-components
Rectangle {
    id: button
    x: 12
    y: 12
    width: 116
    height: 26
    color: "lightsteelblue"
    border.color: "slategrey"
    Text {
        anchors.centerIn: parent
        text: "Start"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
               status.text = "Button clicked!"
        }
    }

    Text {
        id: status
        text: "waiting..."
        x: 12
        y: 76
        width: 116
        height: 26
        horizontalAlignment: Text.AlignHCenter
    }
}
