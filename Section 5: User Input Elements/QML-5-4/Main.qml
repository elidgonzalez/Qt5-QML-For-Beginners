import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached Property")
    Rectangle {
        id: containerRect
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true
        Keys.onDigit1Pressed: function(event){
            console.log("Specific Signal: Pressed on Key 1")
            event.accepted = false
        }
        // Keys.onDigit5Pressed: function(event){
        //     if (event.modifiers === Qt.ControlModifier) {
        //         console.log("Press Control + 5")
        //     }
        //     else {
        //         console.log("Press regular 5")
        //     }
        // }
        Keys.onPressed: function(event) {
            if (event.key === Qt.Key_1) {
                console.log("General Signal: Pressed on Key 1")
            }
            if (event.key === Qt.Key_5 && event.modifiers === Qt.ControlModifier) {
                console.log("Press Control + 5")
            }
        }
    }
}
