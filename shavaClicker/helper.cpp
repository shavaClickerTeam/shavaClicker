#include "helper.h"
#include <QDebug>

Helper::Helper(QObject *parent) : QObject(parent)
{

}

int Helper::count(double sum, double spc){
    sum = sum + spc;
//    qDebug("Clicked ");
//    qDebug() << n;
    return sum;
}

int Helper::changeK(double spc, double s){
    if (s == 1)
        spc = spc + 1;
    if (s == 2)
        spc = spc + 10;
    if (s == 3)
        spc = spc*1.2;
//    qDebug("Clicked ");
//    qDebug() << spc;
    return spc;
}

QVector<double> Helper::buy(QVector<double> param){
//    sum = sum - cost;
//    recost = cost*1.01;
//    return sum;
    param[0] = param[0] - param[1];
    param[2] = param[1]*1.01;
    qDebug("Buyed");
    qDebug() << param[0];
    qDebug() << param[1];
    qDebug() << param[2];
    return param;
}

int Helper::changeSps(double sps, double l){
    if (l == 1)
        sps = sps + 1;
    if (l == 2)
        sps = sps + 25;
    if (l == 3)
        sps = sps + 500;

    return sps;
}

void Helper::qdebug(QString str){
    qDebug() << str;
}
