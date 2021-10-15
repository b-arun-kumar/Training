import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        color: "blue"
        width: parent.width
        height: parent.height / 2
        anchors.top: parent.top

        Rectangle{
            color: "orange"
            width: parent.width / 4
            height: parent.height / 4
            anchors.top: parent.top
            anchors.topMargin: height / 4
            anchors.left: parent.left
            anchors.leftMargin: width / 4
        }
    }

    Rectangle{
        color: "orange"
        width: parent.width
        height: parent.height / 2
        anchors.bottom: parent.bottom

        Rectangle{
            color: "blue"
            width: parent.width / 4
            height: parent.height / 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: height / 4
            anchors.right: parent.right
            anchors.rightMargin: width / 4
        }
    }
}
