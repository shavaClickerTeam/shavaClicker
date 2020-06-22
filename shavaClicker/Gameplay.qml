import QtQuick 2.12
import QtQuick.Layouts 1.3

Rectangle{
    id: gp
    x: 0
    y: 0
    width: 1280
    height: 720

    function count(){
        var sum = helper.count(cz.sum, cz.spc)
        cz.sum = sum
}
    function changeK(k){
        var spc = helper.changeK(cz.spc, k)
        cz.spc = spc
    }
    function buy(cost, id){
        var sum = helper.buy(cz.sum, cost )
        cz.sum = sum
// реализовать по id изменение цены
    }
    function changeSps(l){
        var sps = helper.changeSps(uz.sps, l)
        uz.sps = sps
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

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
