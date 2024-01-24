import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FocusScope Demo")
    Column {
        MButton {
            focus: true
        }

        MButton {
            color: "green"
        }
    }
}
