import QtQuick
import "../"

Item {
    width: 200
    height: 300

    ListView {
        anchors.fill: parent
        anchors.margins: 20

        clip: true
        model: 100
        delegate: numberDelegate
//        orientation: ListView.Horizontal
        highlight: highlightComponent
        focus: true
        header: headerComponent
        footer: footerComponent
    }

    Component {
        id: numberDelegate

        Square {
            width: 300
            height: 40
            text: index
            color: "blue"
        }
    }

    Component {
        id: highlightComponent
        Square {
             width: ListView.width
             color: "red"
        }
    }

    Component {
        id: headerComponent
        Square {
            width: ListView.width
            height: 20
            text: "Header"
            color: "yellow"
        }
    }

    Component {
        id: footerComponent
        Square {
            width: ListView.width
            height: 20
            text: "footer"
            color: "yellow"
        }
    }
}
