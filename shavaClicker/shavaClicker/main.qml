import QtQuick 2.12
import QtQuick.Window 2.12

Window {

    maximumHeight:1079
    minimumHeight:1079

    minimumWidth:1921
    maximumWidth:1921

    visible: true
    width: 1920
    height: 1080
    title: qsTr("shavaClicker")





    Image {
        id: background
        x: 0
        y: 0
        width: 1920
        height: 1080
        source: "background.jpg"
        fillMode: Image.PreserveAspectFit

    }
    AnimatedImage {
        id: gif
        x: 754
        y: 648
        width: 435
        height: 432
        speed: 0.8
        source: "travolta.gif"
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 389
        height: 1080
        color: "pink"
        Image{
            width: 488
            height: 1080
            source: "shava_background1.png"

        }

        Image {
            id: shava
            x: -65
            y: 313
            width: 544
            height: 439
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
