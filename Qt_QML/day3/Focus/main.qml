import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        color: focus ? "green" : "red";
        width: 100;height: width; id:rf; anchors.horizontalCenter: g1.horizontalCenter
        Keys.onUpPressed: {y=y-5}
        Keys.onDownPressed: {y=y+5}
        KeyNavigation.tab: r1
        focus: true
    }

    Grid{
        anchors.centerIn: parent
        spacing : 10
        columns: 2
        id: g1
        Rectangle{color: "green"; width: 100;height: width; id:r1
            border.color: focus ? "black" : "green"
            border.width: focus ? 5 : 0
            KeyNavigation.right: r2
            KeyNavigation.down: r3
        }
        Rectangle{color: "green"; width: 100;height: width; id:r2
            border.color: focus ? "black" : "green"
            border.width: focus ? 5 : 0
            KeyNavigation.down: r4
            KeyNavigation.backtab  : rf
        }
        Rectangle{color: "green"; width: 100;height: width; id:r3
            border.color: focus ? "black" : "green"
            border.width: focus ? 5 : 0
            KeyNavigation.right: r4
            KeyNavigation.backtab: rf
        }
        Rectangle{color: "green"; width: 100;height: width; id:r4
            border.color: focus ? "black" : "green"
            border.width: focus ? 5 : 0
            KeyNavigation.backtab: rf
        }
    }
}
