import QtQuick

// 对应文档地址 QML语法 https://www.qt.io/product/qt6/qml-book/ch04-qmlstart-qml-syntax
Rectangle {
    id: root
    width: 120
    height: 240
    color: "#4A4A4A"
    Image {
        id: triangle
        x: (parent.width - width) / 2
        y: 40
        source: "/images/1.png"
    }
    Text {
        y: triangle.y + triangle.height + 20
        width: root.width
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        text: "demoRect"
    }
    Text {
        id: label
        x: 24
        y: 16
        height: height * 2
        property int times: 24
        property alias  anotherTimes: label.times
        text: "Greetings" + times
        font.family: "Ubuntu"
        font.pixelSize: 24
        onHeightChanged: console.log("height", height)
//        focus: true
        color: focus ? "red" : "black"
    }

    Text {
        id: label1
        x: 124
        y: 124
        property int spacePresses: 0
        text: "Space pressed: " + spacePresses + " times"

        onTextChanged: function(text) {
            console.log("text changed to:", text);
        }
        focus: true
        Keys.onSpacePressed: {
            increment()
        }

        function increment() {
            spacePresses = spacePresses + 1;
        }

        Keys.onEscapePressed: {
            label1.text = ""
        }
    }
}
