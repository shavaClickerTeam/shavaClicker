import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {

    minimumWidth:1280
    maximumWidth:1280


    maximumHeight:720
    minimumHeight:720


    visible: true
    width: 1280
    height: 720
    title: qsTr("shavaClicker")



        Gameplay{
            id: gameplay
        }

        Toolbar{
            id: toolbar
            x: 436
            y: 0
            onQuit: Qt.quit()
            onNewgame: gameplay.newgame()
        }
    }





/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
