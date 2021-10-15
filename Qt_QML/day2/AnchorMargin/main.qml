import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        color: "black"
        width: 50
        height: 50
        anchors.centerIn: parent

        Rectangle{
            color: "blue"
            width: parent.width - 10
            height: parent.height - 10
//            anchors.left: parent.left
//            anchors.top: parent.top
            anchors.leftMargin: 5
            anchors.topMargin: 5
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
            anchors.centerIn: parent
        }
    }
}
