import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JS Usage Demo")

   Rectangle {
       id: containerRectId
       width: getHeight() // JS used in property binding
       height: 100
       color: x > 300 ? "red" : "green"

       // js signal handler
       onXChanged:  {
           console.log("The current value of x: " + x)
       }
       function getHeight() {
           return height * 2
       }
   }

    MouseArea {
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX:  parent.width-containerRectId.width
    }
}
