import QtQuick

import "../"

Column {
    spacing: 2
//    Repeater {
//        model: 10
//        Square {
//            text: index
//            color: "blue"
//        }
//    }

    Repeater {
        model: ListModel {
             ListElement { name: "Mercury"; surfaceColor: "gray" }
             ListElement { name: "Venus"; surfaceColor: "yellow" }
             ListElement { name: "Earth"; surfaceColor: "blue" }
             ListElement { name: "Mars"; surfaceColor: "orange" }
             ListElement { name: "Jupiter"; surfaceColor: "orange" }
             ListElement { name: "Saturn"; surfaceColor: "yellow" }
             ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
             ListElement { name: "Neptune"; surfaceColor: "lightBlue" }
        }

        Square {
            radius: 3
            text: name

            Rectangle {
              anchors.left: parent.left
              anchors.verticalCenter: parent.verticalCenter
              anchors.leftMargin: 4

              width: 16
              height: 16

              radius: 8

              color: surfaceColor
            }
        }
    }
}
