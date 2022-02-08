import QtQuick

Item {
    width: bg.width
    height: bg.height
    Image {
        id: bg
        source: "/images/1.png"
    }

    MouseArea {
        id: backgroundClicker
        anchors.fill: parent
        onClicked: {
            circle.x = 84
            box.rotation = 0
            triangle.rotation = 0
            triangle.scale = 1.0
        }
    }
    DemoSimpleImage {
        id: circle
        x: 84
        y: 84
        source: "/images/2.png"
        antialiasing: true
        onClicked: {
            x += 20;
        }
    }

    DemoSimpleImage {
        id: box
        x: 164; y: 68
        source: "/images/2.png"
        antialiasing: true
        onClicked: {
            // increase the rotation on click
            rotation += 15
        }
    }

    DemoSimpleImage {
        id: triangle
        x: 248; y: 68
        source: "/images/2.png"
        antialiasing: true
        onClicked: {
            // several transformations
            rotation += 15
            scale += 0.05
        }
    }

}
