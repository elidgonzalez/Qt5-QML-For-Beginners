import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers Demo")

    property string mFirstName: "Eli"
    onMFirstNameChanged: {
        console.log("The firstname changed to: " + mFirstName)
    }

    Rectangle {
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
                mFirstName = "Bob"
            }
        }
    }

    Component.onCompleted: {
        console.log("The firstname is: " + mFirstName)
    }
}
