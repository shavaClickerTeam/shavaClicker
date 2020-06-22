import QtQuick 2.0
import QtQuick.Controls 2.5
Rectangle {
    id: uz
    x: 0
    y: 0
    width: 282
    height: 720
    color: "pink"
    property double sps: 0

    signal changeK(int k)
    signal buy(double cost, string id)
    signal changeSps(int l)

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
                id: up1
                width: 90
                height: 54
                property double cost: 100
                property int num: 0
                text: qsTr("")
                Image {
                    id: name
                    width: 90
                    height: 55
                    fillMode: Image.Stretch
                    source: "1.png"
                }
                onClicked: {
                    if (cz.sum >= cost){
                        buy(cost, up1)
                        changeSps(1)
                        up1.num++
               }
             }
            }

            Rectangle {
                id: rectangle
                x: 90
                width: 185
                height: 75
                color: "#ffffff"

                Text {
                    id: element
                    x: 0
                    y: 0
                    width: 185
                    height: 75
                    text: qsTr("Нанять 1 шавермастера\nCтоимость "+up1.cost+"\nГотовит 1 шаверму в секунду\n\nВсего шавермастеров: " + up1.num)
                    font.pixelSize: 12
                }
            }
        }

        Row {
            id: row1
            width: 275
            height: 100

            Button {
                id: up2
                width: 90
                height: 54
                property double cost: 1000
                property int num: 0
                text: qsTr("")
                Image {
                    width: 90
                    height: 55
                    fillMode: Image.Stretch
                    source: "2.png"
                }
                onClicked: {
                    if (cz.sum >= cost){
                        buy(cost, up2)
                        changeSps(2)
                        up2.num++
               }
            }
       }

            Rectangle {
                id: rectangle1
                width: 185
                height: 75
                color: "#ffffff"

                Text {
                    id: element1
                    x: 0
                    y: 0
                    width: 185
                    height: 75
                    text: qsTr("Открыть закусочную\nСтоимость "+up2.cost+"\nПроизводит 25 шаверм в \nсекунду\nВсего закусочных: "+up2.num)
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
                id: up3
                width: 91
                height: 56
                property double cost: 10000
                property int num: 0
                text: ""

                Image {
                    width: 90
                    height: 55
                    fillMode: Image.Stretch
                    source: "3.png"
                }

                onClicked: {
                    if (cz.sum >= cost){
                        buy(cost, up3)
                        changeSps(3)
                        up3.num++
                   }
                }
            }

            Rectangle {
                id: rectangle2
                x: 90
                width: 185
                height: 75
                color: "#ffffff"

                Text {
                    id: element2
                    x: 0
                    y: 0
                    width: 185
                    height: 75
                    text: qsTr("Открыть портал в мир шавермы\nСтоимость "+up3.cost+"\nМатериализует 500 шаверм в \nсекунду\nВсего порталов: "+up3.num)
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
            id: clickup1
            property double cost: 100
            width: 91
            height: 65
            text: qsTr("Цена:\n" + cost)
            onClicked: {
                if (cz.sum >= cost){
                    changeK(1)
                    buy(cost, clickup1)
           }
        }
      }

        Button {
            id: clickup2
            property double cost: 1000
            width: 91
            height: 65
            text: qsTr("Цена:\n" + cost)
            onClicked: {
                if (cz.sum >= cost){
                    changeK(2)
                    buy(cost, clickup2)
                }
            }
        }

        Button {
            id: clickup3
            property double cost: 10000
            width: 91
            height: 65
            text: qsTr("Цена:\n" + cost)
            onClicked: {
                if (cz.sum >= cost){
                    changeK(3)
                    buy(cost, clickup3)
                }
               }
         }

     }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.8999999761581421}
}
##^##*/
