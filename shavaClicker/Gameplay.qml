import QtQuick 2.12
import QtQuick.Layouts 1.3

Rectangle{
    id: gp
    x: 0
    y: 0
    width: 1280
    height: 720


    function qdebug(id){
        helper.qdebug(id)
    }

    function newgame(){
        cz.sum = 0
        cz.spc = 1
        uz.sps = 0
        uz.newgame()
    }

    function count(){
        var sum = helper.count(cz.sum, cz.spc)
        cz.sum = sum
}
    function changeK(k){
        var spc = helper.changeK(cz.spc, k)
        cz.spc = spc
    }
    function buy(cost, id){
        var recost = cost
        var param = [cz.sum, cost, recost]
        param = helper.buy(param)
        cz.sum = param[0]
        uz.recost(id, param[2])
        gp.qdebug(id)
    }
    function changeSps(l){
        var sps = helper.changeSps(uz.sps, l)
        uz.sps = sps
}
    function recount(){
        cz.sum = cz.sum + uz.sps/10
    }


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

    Clickzone{
        id: cz
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        onCount: gp.count()
    }

    Upgradezone{
        id: uz
        x: 998
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        onChangeK: gp.changeK(k)
        onBuy: gp.buy(cost, id)
        onChangeSps: gp.changeSps(l)

    }
    Timer {
        id: timer
        interval: 100
        running: true
        repeat: true
        onTriggered: {
            gp.recount()
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
