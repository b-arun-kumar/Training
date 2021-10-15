import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480

    Rectangle{
        id: main_rect
        color: "grey"
        anchors.fill: parent

        Column{
            anchors.centerIn: parent
            spacing: 10
            Rectangle{color:"black";width:100;height: width;radius: width/2;id:r1}
            Rectangle{color:"black";width:100;height: width;radius: width/2;id:r2}
            Rectangle{color:"black";width:100;height: width;radius: width/2;id:r3}
        }

        states:[
            State{
                name: "green"
                PropertyChanges {
                    target: r3;
                    color: "green"
                }
                PropertyChanges {
                    target: r2;
                    color: "black"
                }
                PropertyChanges {
                    target: r1;
                    color: "black"
                }
            },
            State{
                name: "yellow"
                PropertyChanges {
                    target: r3;
                    color: "black"
                }
                PropertyChanges {
                    target: r2;
                    color: "yellow"
                }
                PropertyChanges {
                    target: r1;
                    color: "black"
                }
            },
            State{
                name: "red"
                PropertyChanges {
                    target: r3;
                    color: "black"
                }
                PropertyChanges {
                    target: r2;
                    color: "black"
                }
                PropertyChanges {
                    target: r1;
                    color: "red"
                }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                PropertyAnimation{
                    targets: [r1,r2,r3]
                    duration: 5000
                    property: "color"
                }

            }
        ]

        Timer{
            id:t1
            interval: 5000
            onTriggered: { main_rect.state = "red"; t2.start() }
        }
        Timer{
            id:t2
            interval: 5000
            onTriggered: { main_rect.state = "yellow"; t3.start() }
        }
        Timer{
            id:t3
            interval: 5000
            onTriggered: { main_rect.state = "green"; t1.start() }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: { t1.start() }
        }
    }
}
