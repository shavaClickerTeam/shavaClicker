import QtQuick 2.0
import QtQuick.Controls 2.5

ToolBar {
    id: toolBar
    x: 0
    y: 0
    width: 351
    height: 35

    signal quit()
    signal newgame()

    Row {
        id: row
        x: 0
        y: 0
        width: 351
        height: 35



        Button {
            id: button
            width: 117
            height: 35
            text: qsTr("Новая игра")
            onClicked: {
                newgame()
            }
        }
        Button {
            id: button1
            width: 117
            height: 35
            text: qsTr("Загрузить игру")
        }

        Button {
            id: button2
            width: 117
            height: 35
            text: qsTr("Выйти")
            onClicked: {
                quit()
            }
        }
    }



}

