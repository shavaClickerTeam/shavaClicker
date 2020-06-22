import QtQuick 2.0
import QtQuick.Controls 2.5
Rectangle {
    id: uz
    x: 0
    y: 0
    width: 282
    height: 720
    color: "pink"
    property int spc: 1

    signal changeK(int i)

    Image {
        id: image
        x: -49
        y: 0
        width: 336
        height: 720
        fillMode: Image.Stretch
        source: "shava_background2.png"
    }

    Column {
        id: column
        x: 0
        y: 136
        width: 275
        height: 576

        Row {
            id: row
            width: 275
            height: 100

            Button {
                id: button
                width: 90
                height: 54
                text: qsTr("")
                Image {
                    id: name
                    width: 90
                    height: 55
                    fillMode: Image.Stretch
                    source: "1.png"
                }
                onClicked: {
                action()
                }
            }

            Rectangle {
                id: rectangle
                x: 90
                width: 185
                height: 55
                color: "#ffffff"

                Text {
                    id: element
                    x: 0
                    y: 0
                    width: 185
                    height: 55
                    text: qsTr("Нанять 1 шавермастера\nCтоимость 20\nГотовит 1 шаверму в секунду ")
                    font.pixelSize: 12
                }
            }
        }

        Row {
            id: row1
            width: 275
            height: 100

            Button {
                id: button1
                width: 90
                height: 54
                text: qsTr("")
                Image {
                    width: 90
                    height: 55
                    fillMode: Image.Stretch
                    source: "2.png"
                }
            }

            Rectangle {
                id: rectangle1
                width: 185
                height: 55
                color: "#ffffff"

                Text {
                    id: element1
                    x: 0
                    y: 0
                    width: 185
                    height: 55
                    text: qsTr("Открыть закусочную\nСтоимость 500\nПроизводит 25 шаверм в \nсекунду")
                    font.pixelSize: 12
                }
            }
        }

        Row {
            id: row2
            width: 275
            height: 100

            Button
            {
                id: button2
                width: 91
                height: 56
                text: ""

                Image {
                    width: 90
                    height: 55
                    fillMode: Image.Stretch
                    source: "3.png"
                }
            }

            Rectangle {
                id: rectangle2
                x: 90
                width: 185
                height: 55
                color: "#ffffff"

                Text {
                    id: element2
                    x: 0
                    y: 0
                    width: 185
                    height: 55
                    text: qsTr("Открыть портал в мир шавермы\nСтоимость 10000\nМатериализует 500 шаверм в \nсекунду")
                    font.pixelSize: 12
                }
            }
        }
    }

    Row {
        id: row3
        x: 0
        y: 63
        width: 273
        height: 65

        Button {
            id: button5
            width: 91
            height: 65
            text: qsTr("")
            onClicked: {
                changeK(1)
            }
        }

        Button {
            id: button4
            width: 91
            height: 65
            text: qsTr("")
            onClicked: {
                changeK(2)
            }
        }

        Button {
            id: button3
            width: 91
            height: 65
            text: qsTr("")
            onClicked: {
                changeK(3)
            }
        }



    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.6600000262260437}
}
##^##*/
