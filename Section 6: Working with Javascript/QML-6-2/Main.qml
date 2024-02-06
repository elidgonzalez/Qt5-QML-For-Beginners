import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Functions and Scope Demo")

    function min(a, b) {
        return Math.max(a, b)
    }

    Rectangle {
        id: mRectId
        width: min(300, 400)
        height: 100
        anchors.centerIn: parent
        color: "blue"
    }

    MouseArea {
        id: mMouseAreaId
        anchors.fill: parent
        function sayMessage() {
            console.log("Hello there")
        }

        onClicked: {
            sayMessage()
        }
    }

    Component.onCompleted: {
        // console.log("The width of the rect is: " + mRectId.width)
        mMouseAreaId.sayMessage()
    }
}
