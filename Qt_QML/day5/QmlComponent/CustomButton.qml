import QtQuick 2.0

Rectangle {
    width: 100; height: 50; radius: 10; color: "blue";
    //property string label: "0"
    property alias label: button_t.text
    Text {
        id: button_t
        //text: label
        anchors.centerIn: parent
        font.pixelSize: 20
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            //console.log("clicked " +button_t.text)
            console.log("clicked " +label)
            buttonClicked(label)
            //buttonClicked(button_t.text)
        }
    }
    signal buttonClicked(string label)
}
