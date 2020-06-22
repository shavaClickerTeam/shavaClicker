import QtQuick 2.0


Rectangle {
    id: cz
    x: 0
    y: 0
    width: 282
    height: 720
    color: "pink"

    property int sum: 0
    property int sps: 0
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
            text: qsTr("Шаверм:")
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            fontSizeMode: Text.Fit
            font.pixelSize: 25

            Text {
                id: textSum
                x: 0
                y: 25
                width: 200
                height: 25
                text: sum
                font.strikeout: false
                font.underline: false
                font.italic: false
                font.bold: true
                font.family: "Tahoma"
                horizontalAlignment: Text.AlignHCenter
                fontSizeMode: Text.Fit
                font.pixelSize: 25
            }
        }

        Text {
            id: text2
            width: 200
            height: 50
            text: qsTr("Шаверм в секунду:")
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            fontSizeMode: Text.Fit
            font.pixelSize: 25

            Text {
                id: textSPS
                x: 0
                y: 25
                width: 200
                height: 25
                text: sps
                font.strikeout: false
                font.underline: false
                font.italic: false
                font.bold: true
                font.family: "Tahoma"
                horizontalAlignment: Text.AlignHCenter
                fontSizeMode: Text.Fit
                font.pixelSize: 25
            }
        }
    }

}




