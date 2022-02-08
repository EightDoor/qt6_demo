import QtQuick

Grid {
    Rectangle {
        id: rectangle1
        width: 200
        height: 80
        color: "linen"

        TextInput {
            id: input1
            x: 8
            y: 8
            width: 96
            height: 20
            focus: true
            text: "Text Input 1"
            KeyNavigation.tab: input2
        }

        TextInput {
            id: input2
            x: 8
            y: 36
            width: 96
            height: 20
            text: "Text Input 2"
             KeyNavigation.tab: input1
        }
    }

    Rectangle {
        x: rectangle1.width + 20
        width: 200
        height: 80
        Grid {
            DemoInputCom {
                id: inputCom1
                text: "inputCom1"
            }
            DemoInputCom {
                id: inputCom2
                text: "inputCom2"
            }

        }
    }
}
