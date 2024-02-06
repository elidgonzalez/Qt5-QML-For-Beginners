import QtQuick
import QtQuick.Layouts

Window {
    width: mGridLayoutId.implicitWidth
    height: mGridLayoutId.implicitHeight
    visible: true
    title: qsTr("Layouts Demo")

    GridLayout {
        id: mGridLayoutId
        anchors.fill: parent
        columns: 3
        Rectangle {
            id: topLeftRectId
            width: 70
            height: width
            color: "green"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: topCenterRectId
            width: 100
            height: width
            color: "red"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: topRightRectId
            width: 100
            height: width
            color: "blue"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: centerLeftRectId
            width: 100
            height: width
            color: "beige"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: centerRectId
            width: 100
            height: width
            color: "pink"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "yellow"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: bottomLeftRectId
            width: 100
            height: width
            color: "magenta"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: bottomRectId
            width: 100
            height: width
            color: "yellowgreen"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: bottomRightRectId
            width: 100
            height: width
            color: "dodgerblue"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
