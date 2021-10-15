import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ListModel{
        id: clm
        ListElement{name: "a"; number: "1"}
        ListElement{name: "b"; number: "2"}
        ListElement{name: "c"; number: "3"}
    }

    Component{
        id: del
        Rectangle{width:100;height:50;color:"blue"
            Row{
                spacing:5
                Text{text:index}
                Text{text:name}
                Text{text:number}
            }
        }
    }

    ListView{
        anchors.fill : parent
        spacing: 5
        id: clv
        //model: clm
        model: CppModel
        delegate: del
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            test()
            var clc = {name: "new", number: "new"}
            clm.append(clc)
            test()
        }
    }

    function test(){
        for(var i=0; i < clm.count; i++)
        {
            var clc = clm.get(i)
            console.log("name " +clc.name)
        }
    }
}
