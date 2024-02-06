import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Anchors Demo")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent
        Rectangle {
            id: topLeftRectId
            width: 100
            height: width
            color: "magenta"
        }
        Rectangle {
            id: topCenterRectId
            width: 100
            height: width
            color: "yellowgreen"
            anchors.left: topLeftRectId.right
        }
        Rectangle {
            id: topRightRectId
            width: 100
            height: width
            color: "dodgerblue"
            anchors.left: topCenterRectId.right
        }
        Rectangle {
            id: centerLeftRectId
            width: 100
            height: width
            color: "red"
            anchors.top: topLeftRectId.bottom
        }
        Rectangle {
            id: centerRectId
            width: 100
            height: width
            color: "green"
            // anchors.left: centerLeftRectId.right
            // anchors.top: topRightRectId.bottom
            anchors.horizontalCenterOffset: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "blue"
            anchors.left: centerRectId.right
            anchors.top: topRightRectId.bottom
        }
        Rectangle {
            id: bottomLeftRectId
            width: 100
            height: width
            color: "royalblue"
            anchors.top: centerLeftRectId.bottom
        }
        Rectangle {
            id: bottomCenterRectId
            width: 100
            height: width
            color: "yellow"
            anchors.left: bottomLeftRectId.right
            anchors.top: centerLeftRectId.bottom
        }
        Rectangle {
            id: bottomRightRectId
            width: 100
            height: width
            color: "pink"
            anchors.left: bottomCenterRectId.right
            anchors.top: centerLeftRectId.bottom
        }
    }
    Rectangle {
        width: 200
        height: 200
        color: "black"
        anchors.right: containerRectId.left
    }
}
