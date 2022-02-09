import QtQuick
import "js/create-component.js" as ImageCreator

Item {
    id: root
    width: 300
    height: 300

    Component.onCompleted:  {
        ImageCreator.createImageObject()
    }
}
