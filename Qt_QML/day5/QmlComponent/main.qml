import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property var labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "+", "-"]

    Rectangle{
        anchors.centerIn: parent
        width: g.width + 10
        height: t.height + g.height + 10
        border.color: black
        border.width: 3


        Text{
            id: t
            width: g.width
            height: 50
            anchors.horizontalCenter: g.horizontalCenter
            anchors.bottom: g.top
            font.pixelSize: 30
        }

        Grid{
            id: g
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 2
            columns: 3
            Repeater{
                model: 12
                CustomButton{
                    label: labels[index]
                }
            }

            //        CustomButton{label: "1"; id: cb1}
            //        CustomButton{label: "2"}
            //        CustomButton{label: "3"}

            //        CustomButton{label: "4"}
            //        CustomButton{label: "5"}
            //        CustomButton{label: "6"}

            //        CustomButton{label: "7"}
            //        CustomButton{label: "8"}
            //        CustomButton{label: "9"}

            //        CustomButton{label: "0"}
            //        CustomButton{label: "+"}
            //        CustomButton{label: "-"}
        }

        function captureClicks(label)
        {
            console.log("click received " +label)
            t.text = t.text + label
        }

        Component.onCompleted: {
            //cb1.buttonClicked.connect(captureClicks)
            for(var i = 0; i < g.children.length; i++){
                var gchild = g.children[i]
                gchild.buttonClicked.connect(captureClicks)
            }
        }
    }
}
