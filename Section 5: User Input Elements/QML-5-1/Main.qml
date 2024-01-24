import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput Element Demo")

    Row {
        x: 10
        y: 10
        spacing: 10
        Rectangle {
            id: firstNameLabelRectId
            width: firstNameLabelId.implicitWidth + 20
            height: firstNameLabelId.implicitHeight + 20
            color: "beige"
            Text {
                id: firstNameLabelId
                anchors.centerIn: parent
                text: qsTr("First Name: ")
            }
        }
        Rectangle {
            id: firstNameTextRectId
            width: firstNameTextId.implicitWidth + 20
            height: firstNameTextId.implicitHeight + 20
            color: "beige"
            TextInput {
                id: firstNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your first name"
                onEditingFinished: {
                    console.log("The first name changed to: " + text)
                }
            }
        }
    }


    Row {
        x: 10
        y: 60
        spacing: 10
        Rectangle {
            id: lastNameLabelRectId
            width: lastNameLabelId.implicitWidth + 20
            height: lastNameLabelId.implicitHeight + 20
            color: "beige"
            Text {
                id: lastNameLabelId
                anchors.centerIn: parent
                text: qsTr("Last Name: ")
            }
        }
        Rectangle {
            id: lastNameTextRectId
            width: lastNameTextId.implicitWidth + 20
            height: lastNameTextId.implicitHeight + 20
            color: "beige"
            TextInput {
                id: lastNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your last name"
                onEditingFinished: {
                    console.log("The last name changed to: " + text)
                }
            }
        }
    }
}
