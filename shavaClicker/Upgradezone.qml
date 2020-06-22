import QtQuick 2.0
import QtQuick.Controls 2.5
Rectangle {
    id: rectangle
    x: 0
    y: 0
    width: 282
    height: 720
    color: "pink"

    Image {
        id: image
        x: -49
        y: 0
        width: 336
        height: 720
        fillMode: Image.Stretch
        source: "shava_background2.png"
}
        Button {
            id: button
            x: 96
            y: 118
            width: 90
            height: 54
            text: qsTr("Button")
            Image {
                id: name
                width: 92
                height: 55
                fillMode: Image.Stretch
                source: "1.png"
            }
        }

        Button {
            id: button1
            x: 96
            y: 245
            width: 90
            height: 54
            text: qsTr("Button")
            Image {
                width: 92
                height: 55
                fillMode: Image.Stretch
                source: "2.png"
            }
        }


    Button
    {
        id: button2
        x: 96
        y: 375
        width: 91
        height: 56
        text: "button"

        Image {
            width: 92
            height: 55
            fillMode: Image.Stretch
            source: "3.png"
        }
    }

}
