import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External Components with signals and slots")

    Notifier {
        id: notifierId
        rectColor: "yellowgreen"
    }
    Reciever {
        id: recieverId
        rectColor: "dodgerblue"
        anchors.right: parent.right
    }

    Component.onCompleted: {
        notifierId.notify.connect(recieverId.receiveInfo) // Connect signal to slot
    }
}
