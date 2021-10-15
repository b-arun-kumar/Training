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
        Rectangle{color:"red";width:120;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"red";width:120;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"red";width:120;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"red";width:120;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"red";width:120;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
    }

    Column{
        spacing: 5
        anchors.top: row.bottom
        anchors.topMargin: 15
        Rectangle{color:"orange";width:120;height:100;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"orange";width:120;height:100;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"orange";width:120;height:100;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"orange";width:120;height:100;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
    }

    Grid{
        spacing: 5
        anchors.centerIn: parent
        columns: 3
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue";func()}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
        Rectangle{color:"green";width:50;height:50;
            Text {text: qsTr("blue");anchors.centerIn: parent}
            MouseArea{anchors.fill: parent;onClicked: {parent.color = "blue"}}}
    }

    function func(){
        console.log("func called");
    }
}
