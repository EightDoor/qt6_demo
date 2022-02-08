import QtQuick

Rectangle {
    id: root
    property alias text: label.text
    signal clicked

    width: 116
    height: 26
    Text {
        id: label
        text: "Start"
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}
