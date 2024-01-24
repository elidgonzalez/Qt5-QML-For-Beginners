import QtQuick

FocusScope {
    width: containerRectId.width
    height: containerRectId.height
    property alias color: containerRectId.color
    Rectangle {
        id: containerRectId
        width: 300
        height: 50
        focus: true
        color: "beige"
        Text {
            id: containerTextId
            text: qsTr("Default")
            anchors.centerIn: parent
        }
        Keys.onPressed: function(event){
            if (event.key === Qt.Key_1) {
                containerTextId.text = "Pressed on key1"
            }
            else if (event.key === Qt.Key_2) {
                containerTextId.text = "Pressed on key2"
            }
            else {
                containerTextId.text = "Pressed on another key: " + event.key
            }
        }
    }

}

