import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: main_window
    visible: true
    width: 640
    height: 480
    title: qsTr("StickFigure")

    Rectangle{
        id: head
        width: 50
        height: width
        radius: width / 2
        x: (main_window.width / 2) - radius
        color: "orange"
    }

    Rectangle{
        id: mid
        width: 1
        height: head.height * 3
        x: main_window.width / 2
        y: head.height
        color: "brown"
    }

    Rectangle{
        id: hands
        width: head.width * 3
        height: 1
        x: (main_window.width / 2) - (width / 2)
        y: head.height * 2
        color: "brown"
    }

    Rectangle{
        id: rleg
        width: head.width * 1.5
        height: 1
        x: (main_window.width / 2) - 10
        y: head.height + mid.height + 25
        color: "brown"
        rotation: 45
    }

    Rectangle{
        id: lleg
        width: head.width * 1.5
        height: 1
        x: (main_window.width / 2) - 63
        y: head.height + mid.height + 25
        color: "brown"
        rotation: 135
    }
}
