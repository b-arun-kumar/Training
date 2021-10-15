import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row{
        spacing: 10
        id: row
        Rectangle{color:"red";width:120;height:50;id: r1
            MouseArea{
                anchors.fill: parent;
                hoverEnabled: true
                onEntered: {parent.color = "blue"}
                onExited:  {parent.color = "red"}
                drag.target: r1
                drag.axis: Drag.YAxis
            }}
        Rectangle{color:"red";width:120;height:50;}
        Rectangle{color:"red";width:120;height:50;}
        Rectangle{color:"red";width:120;height:50;}
        Rectangle{color:"red";width:120;height:50;}
    }

    Rectangle{color:"red";width:120;height:50;id: r2;visible: false}
    Rectangle{color:"red";width:120;height:50;id: r3;visible: false}
    Rectangle{color:"red";width:120;height:50;id: r4;visible: false}
    Rectangle{color:"red";width:120;height:50;id: r5;visible: false}

    property var i : 0
    MouseArea{
        width: 640
        height: 430
        y: 50
        onClicked: {
            if (i === 0){
                r2.visible = true
                r2.x = mouse.x
                r2.y = mouse.y
            }
            if (i === 1){
                r3.visible = true
                r3.x = mouse.x
                r3.y = mouse.y
            }
            if (i === 2){
                r4.visible = true
                r4.x = mouse.x
                r4.y = mouse.y
            }
            if (i === 3){
                r5.visible = true
                r5.x = mouse.x
                r5.y = mouse.y
            }
            i++
        }
    }
}
