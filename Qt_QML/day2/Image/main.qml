import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: i1
        //source: "C:\Users\bakurua\Pictures\Carrier Desktop Background.jpg"
        //source: Qt.resolvedUrl("C:\Users\bakurua\Pictures\Carrier Desktop Background.jpg")
        source: "./Carrier Desktop Background.jpg"
    }
}
