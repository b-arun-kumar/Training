import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        color: "green"
        width:200
        height: 100
        id:r1
    }
    Rectangle{
        color: "red"
        width:200
        height: 100
        id:r2
        anchors.left: r1.right
    }

    Rectangle{
        color: "grey"
        width:200
        height: 100
        id:r3

        MouseArea{
            anchors.fill: parent;
            hoverEnabled: true
            onReleased: {
                if(r3.x < 100)
                    r3.x = 0
                else
                    r3.x = 200
            }
            drag.target: r3
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: 200
        }

        Behavior on x {
            NumberAnimation{
                duration: 500
            }
        }
    }
}
