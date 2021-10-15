import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        x: 640 / 2 - 25
        font.pixelSize: 30
        id: state
        text: loginBL.name
        width: 50
        height: 50
    }

    Rectangle{
        x: 440 / 2
        y: 50
        width:200
        height: 30
        border.width: 2
        TextInput{
            id: username
            text: "username"
            width:100
            height: 50
            font.pixelSize: 20
        }
    }
    Rectangle{
        x: 440 / 2
        y: 100
        width:200
        height: 30
        border.width: 2
        TextInput{
            id: password
            text: "password"
            width:100
            height: 50
            font.pixelSize: 20
        }
    }
    Rectangle{
        x: 440 / 2 + 10
        y: 150
        width:80
        height: 30
        border.width: 2
        Text{
            anchors.fill: parent
            text: "Login"
            font.pixelSize: 15
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("username " +username.text)
                console.log("username " +password.text)
                loginBL.authenticate(username.text, password.text)
                loginBL.name = "new"
                console.log("read name from BL: " +loginBL.name)
            }
        }
    }
    Rectangle{
        x: 440 / 2 + 100 + 10
        y: 150
        width:80
        height: 30
        border.width: 2
        Text{
            anchors.fill: parent
            text: "Cancel"
            font.pixelSize: 15
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                username.text = "username"
                password.text = "password"
            }
        }
    } 
   function qmlSuccess(){
       state.text = "success"
   }
   function qmlFailed(){
       state.text = "failed"
   }
   Component.onCompleted: {
//       loginBL.success.connect(qmlSuccess);
//       loginBL.failed.connect(qmlFailed);
       loginBL.test()
   }
   Connections{
       target: loginBL
       onSuccess:{
           qmlSuccess();
       }
       onFailed:{
           qmlFailed();
       }
   }
}
