import QtQuick

Item {
    Grid {
        Rectangle {
            width: 120
            height: 240
            Column  {
                id: column
                anchors.centerIn: parent
                spacing: 8
                Square {
                    width: 12
                    anchors.margins: 8
                    text: "(1)"
                    color: "red"
                }
                Square {
                    width: 48
                    y: 8
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    text: "(2)"
                    color: "green"
                }
                Square {
                    width: 48
                    anchors.left: parent.right
                    text: "(3)"
                    color: "blue"
                }
            }
        }

        Rectangle {
            width: 400
            height: 120
            Row {
                id: row
                anchors.centerIn: parent
                spacing: 20
                Square {
                    color: "red"
                }
                Square {
                    color: "green"
                }
                Square {
                    color: "blue"
                }
            }
        }
        Rectangle {
            id: rectangle
            width: 160
            height: 160
            Grid {
                id: grid
                rows: 2
                columns: 2
                anchors.centerIn: parent
                spacing: 8
                Square {
                    color: "red"
                }
                Square {
                    color: "green"
                }
                Square {
                    color: "blue"
                }
                Square {
                    color: "black"
                }
            }
        }

        Rectangle {
            id: rectangle2
            width: 160
            height: 160

            Flow {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 20
                Square {
                    color: "green"
                }
                Square {
                    color: "blue"
                }
                Square {
                    color: "black"
                }
            }
        }

        Rectangle {
            id: rectangle3
            width: 252
            height: 252
            property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]

            Grid {
                anchors.fill: parent
                anchors.margins: 8
                spacing: 4
                Repeater {
                    model: 16
                    Rectangle {
                        width: 56
                        height: 56
                        property int  colorIndex: Math.floor(Math.random() * 3)
                        color: rectangle3.colorArray[colorIndex]
                        Text {
                            anchors.centerIn: parent
                            color: "#f0f0f0"
                            text: "Cell " + index
                        }
                    }
                }
            }
        }
    }
}
