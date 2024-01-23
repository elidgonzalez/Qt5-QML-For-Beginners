import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object Demo")

    property var fonts: Qt.fontFamilies()

    Rectangle {
        width: 100
        height: 100
        color: "red"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {

                // Quit the application
                console.log("Quitting the app")
                Qt.quit()

                // List available fonts
                for (var i = 0; i < fonts.length; i++) {
                    console.log("[" + i + "]: " + fonts[i])
                }

                // Hash a string
                var mName = "Eli"
                var mNameHash = Qt.md5(mName)
                console.log("The has of the name " + mName + " is: " + mNameHash)

                // Open url externally
                Qt.openUrlExternally("https://www.youtube.com")

                // Open local files with default app
                Qt.openUrlExternally("file:///sample.png")

                // Capture platform info
                console.log("The current platform is: " + Qt.platform.os)
            }
        }
    }
}
