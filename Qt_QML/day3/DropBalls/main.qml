import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{color: "blue";width: 100;height: width;radius: width/2;id:r1
        MouseArea{anchors.fill: parent;onClicked: {p1.start()}}
        onYChanged: {
            if(y === 380){
                p2.start()}}
    }
    Rectangle{color: "blue";width: 100;height: width;radius: width/2;id:r2;anchors.left: r1.right
        onYChanged: {
            if(y === 380){
                p3.start()}}
    }
    Rectangle{color: "blue";width: 100;height: width;radius: width/2;id:r3;anchors.left: r2.right
        onYChanged: {
            if(y === 380){
                p4.start()}}
    }
    Rectangle{color: "blue";width: 100;height: width;radius: width/2;id:r4;anchors.left: r3.right   }

    PropertyAnimation{
        id:p1
        target: r1
        property: "y"
        from: 0
        to:380
        duration: 2000
        easing.type: Easing.OutBounce
    }
    PropertyAnimation{
        id:p2
        target: r2
        property: "y"
        from: 0
        to:380
        duration: 1500
        easing.type: Easing.OutBounce
    }
    PropertyAnimation{
        id:p3
        target: r3
        property: "y"
        from: 0
        to:380
        duration: 1000
        easing.type: Easing.OutBounce
    }
    PropertyAnimation{
        id:p4
        target: r4
        property: "y"
        from: 0
        to:380
        duration: 500
        easing.type: Easing.OutBounce
    }
}
