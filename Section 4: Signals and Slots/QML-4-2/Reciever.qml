import QtQuick

Item {
    property alias rectColor: recieverRectId.color
    width: recieverRectId.width
    height: recieverRectId.height
    function receiveInfo(count) {
        recieverDisplayTextId.text = count
        console.log("Reciever recieved number: " + count)
    }
    Rectangle {
        id: recieverRectId
        width: 200
        height: 200
        color: "red"
        Text {
            id: recieverDisplayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: "0"
        }
    }
}
