import QtQuick

Rectangle {
    id: root
    width: 48
    height: 48
    color: root.color
    border.color: Qt.lighter(color)
    property string text: ""
    Text {
        id: label
        text: root.text
    }
}
