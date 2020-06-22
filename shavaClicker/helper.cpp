#include "helper.h"
#include <QDebug>

Helper::Helper(QObject *parent) : QObject(parent)
{

}

int Helper::count(int n){
    n = n + 1;
    qDebug("Clicked ");
    qDebug() << n;
    return n;
}
