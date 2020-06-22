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

int Helper::buy(double sum, double cost){
    sum = sum - cost;
    return sum;
}

int Helper::changeSps(double sps, double l){
    if (l == 1)
        sps = sps + 1;
    if (l == 2)
        sps = sps + 10;
    if (l == 3)
        sps = sps*1.2;

    return sps;
}
