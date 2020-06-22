import QtQuick 2.0


Rectangle {
    id: cz
    x: 0
    y: 0
    width: 282
    height: 720
    color: "pink"

    property double sum: 10000
    property double spc: 1
    signal count(double sum)

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

    Column {
        id: column
        x: 33
        y: 0
        width: 200
        height: 112

        Text {
            id: text1
            width: 200
            height: 50
            text: qsTr("Шаверм:\n" + sum.toFixed())
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            fontSizeMode: Text.Fit
            font.pixelSize: 25
        }

        Text {
            id: text2
            width: 200
            height: 50
            text: qsTr("Шаверм в секунду:\n" + uz.sps)
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            fontSizeMode: Text.Fit
            font.pixelSize: 25
        }
    }

    Text {
        id: text3
        x: 33
        y: 650
        width: 200
        height: 50
        text: qsTr("Шаверм по клику:\n" + spc)
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

}






