import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property var names: ["a", "b", "c"]
    property var numbers: ["1", "2", "3"]

    Column{
        id: cname
        Repeater{
            model: 3
            Text{
                width: 100
                height: 50
                font.pixelSize: 30
                text: names[index]
            }
        }
    }

    Column{
        x: parent.width / 2
        id: cnumber
        Repeater{
            model: 3
            Text{
                width: 100
                height: 50
                font.pixelSize: 30
                text: numbers[index]
            }
        }
    }
}
