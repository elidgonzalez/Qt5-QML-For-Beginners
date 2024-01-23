import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals & Slots Demo")

    property int increment: 50

    Rectangle {
        id: rectangleId
        width: 200 + increment
        height: 300
        color: "red"

        signal greet(string message) // Declare Signal

        onGreet:  {
            console.log("onGreet: greet signal emitted")
        }

        onWidthChanged: {

        }

        function myGreeting(mMessage) {
            console.log("myGreeting slot called. The parameter is: " + mMessage)
            increment += 50
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("Hello there") // Fire signal
            }
        }
        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting)
        }
    }
}
