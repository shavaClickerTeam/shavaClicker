import QtQuick 2.12
import QtQuick.Window 2.12

Window {

    minimumWidth:1280
    maximumWidth:1280


    maximumHeight:720
    minimumHeight:720


    visible: true
    width: 1280
    height: 720
    title: qsTr("shavaClicker")





    Image {
        id: background
        x: 0
        y: 0
        width: 1280
        height: 720
        source: "background.jpg"
        fillMode: Image.PreserveAspectFit

    }
    AnimatedImage {
        id: gif
        x: 498
        y: 347
        width: 358
        height: 373
        speed: 0.8
        source: "travolta.gif"
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 282
        height: 720
        color: "pink"
        Image{
            x: 0
            y: 0
            width: 300
            height: 723
            source: "shava_background1.png"

        }

        Image {
            id: shava
            x: 33
            y: 257
            width: 216
            height: 209
            fillMode: Image.PreserveAspectFit
            source: "shava.png"
        }
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.6600000262260437}
}
##^##*/
