import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Datatypes Demo")

    property string mString: "Hello World"
    property int mInt: 45
    property bool isFemale: true
    property double mDouble: 77.5
    property url mUrl: "https://test.com"

    Rectangle {
        width: 200
        height: 100
        anchors.centerIn: parent
        color: "yellow"
        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
            font.bold: isFemale ? true : false
        }
    }

    Component.onCompleted: {
        console.log("The value of mString is :" + mString)
        console.log("The value of mInt is :" + mInt)
        if (isFemale) {
            console.log("You may wear a dress")
        }
        else {
            console.log("You may wear a suit")
        }
        console.log("The value of mDouble is :" + mDouble)
        console.log("The value of mUrl is :" + mUrl)

        if (mString === mUrl) {
            console.log("They are the same")
        }
        else {
            console.log("They are not the same")
        }
    }
}
