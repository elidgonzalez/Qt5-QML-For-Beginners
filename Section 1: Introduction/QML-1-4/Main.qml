import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        anchors.centerIn: parent
        text: qsTr("Hello World")
        color: "red"
        font.pointSize: 20
    }
}
