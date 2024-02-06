import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioners Demo")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent

        Grid {
           columns: 3
           spacing: 10
           horizontalItemAlignment: Grid.AlignRight
           verticalItemAlignment: Grid.AlignCenter
           LayoutMirroring.enabled: true
           LayoutMirroring.childrenInherit: true
           Rectangle {
               id: topLeftRectId
               width: 100
               height: width
               color: "magenta"
               Image {
                   anchors.centerIn: parent
                   width: 50
                   height: 50
                   source: "sampleimagefile"
               }
           }
           Rectangle {
               id: topCenterRectId
               width: 100
               height: width
               color: "yellowgreen"
           }
           Rectangle {
               id: topRightRectId
               width: 100
               height: width
               color: "dodgerblue"
           }
           Rectangle {
               id: centerLeftRectId
               width: 100
               height: width
               color: "red"
           }
           Rectangle {
               id: centerRectId
               width: 100
               height: width
               color: "green"
           }
           Rectangle {
               id: centerRightRectId
               width: 100
               height: width
               color: "blue"
           }
           Rectangle {
               id: bottomLeftRectId
               width: 100
               height: width
               color: "royalblue"
           }
           Rectangle {
               id: bottomCenterRectId
               width: 100
               height: width
               color: "yellow"
           }
           Rectangle {
               id: bottomRightRectId
               width: 100
               height: width
               color: "pink"
           }
        }
    }
}
