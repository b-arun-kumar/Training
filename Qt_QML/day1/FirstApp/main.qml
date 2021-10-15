import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        width: 50
        height: width
        color: "blue"
        x: 0
    }

    Rectangle{
        width: 50
        height: width * 2
        color: "green"
        x: width * 2
    }

    Rectangle{
        width: 50
        height: width * 4
        color: "yellow"
        x: width * 4
    }
}
