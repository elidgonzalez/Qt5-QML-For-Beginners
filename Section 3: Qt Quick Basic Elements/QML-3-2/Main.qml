import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Row {
    //     spacing: 20
    //     Rectangle {
    //         width: 300
    //         height: 100
    //         color: "red"
    //     }
    //     Rectangle {
    //         width: 300
    //         height: 100
    //         color: "blue"
    //     }
    // }

    Column {
        MButton {
            buttonText: "Button1"
            onButtonClicked: {
                console.log("Clicked on Button 1 from main file")
            }
        }

        MButton {
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked on Button 2 from main file")
            }
        }
    }


}
