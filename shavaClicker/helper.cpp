#include "helper.h"
#include <QDebug>

Helper::Helper(QObject *parent) : QObject(parent)
{

}

int Helper::count(int n, int k){
    n = n + k;
    qDebug("Clicked ");
    qDebug() << n;
    return n;
}

int Helper::changeK(int k, int s){
    if (s == 1)
        k = k + 5;
    if (s == 2)
        k = k + 100;
    if (s == 3)
        k = k*2;
    qDebug("Clicked ");
    qDebug() << k;
    return k;
}
