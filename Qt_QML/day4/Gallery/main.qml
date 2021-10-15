import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Grid{
        id: g
        anchors.centerIn: parent
        spacing: 10
        columns: 3
        Repeater{
            model:9
            Rectangle{color:"green";width:100;height: width
                MouseArea{
                    anchors.fill: parent
                    onClicked: {g.visible = false; r.visible = true;}
                }
            }
        }
    }

    Rectangle{
        color:"blue";width:350;height: width;id: r;visible: false
        anchors.centerIn: parent
        PropertyAnimation{
            id: anim
            target: r
            duration: 2000
            property: "width"
            from:0
            to:350
        }
        MouseArea{
            anchors.fill: parent
            onClicked: { r.visible = false; g.visible = true;}
            onVisibleChanged: {anim.running = true}
        }
    }
}
