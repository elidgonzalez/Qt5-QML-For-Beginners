import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")

    Rectangle {
        id: redRectId
        width: 50
        height: width * 1.5
        color: "red"
    }

    Rectangle {
        id: blueRectId
        width: 100
        height: 100
        color: "blue"
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.width = redRectId.width + 10
            }
        }
    }
    Rectangle {
        id: greenRectId
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right
        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.height = Qt.binding(function() {
                    return redRectId.width * 2
                })
            }
        }
    }
}
