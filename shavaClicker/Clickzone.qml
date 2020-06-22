import QtQuick 2.0


Rectangle {
    id: cz
    x: 0
    y: 0
    width: 282
    height: 720
    color: "pink"

    property int sum: 0
    signal count(int sum)

    Image{
        id: bg1
        x: 0
        y: 0
        width: 300
        height: 723
        source: "shava_background1.png"

    }

    Image {
        id: shava
        x: 33
        y: 256
        width: 216
        height: 209
        source: "shava.png"

        MouseArea{
            x: 43
            width: 127
            height: 210
                anchors.top: parent.top
                anchors.topMargin: 0
                onClicked: {
                    count(sum)
                }
         }
        }

    }


