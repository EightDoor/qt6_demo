import QtQuick 2.0

Rectangle {
    width: 400
    height: 200
    focus: true
    border.width: 1
    border.color: "green"

    Rectangle {
        id: square
        width: 20
        height: 20
        x: 8
        y: 8
        border.width: 1
        border.color: "red"
    }
    Text {
        text: "移动，键盘上下左右键"
        color: "blue"
    }

    Keys.onLeftPressed: square.x -= 8
    Keys.onRightPressed: square.x += 8
    Keys.onUpPressed: square.y -= 8
    Keys.onDownPressed: square.y += 8
    Keys.onPressed: {
        switch(event.key) {
        case Qt.Key_Plus:
            square.scale += 0.2
            break;
        case Qt.Key_Minus:
            square.scale -= 0.2
            break
        }
    }
}
