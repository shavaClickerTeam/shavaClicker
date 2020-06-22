#ifndef HELPER_H
#define HELPER_H

#include <QObject>

class Helper : public QObject
{
    Q_OBJECT
public:
    explicit Helper(QObject *parent = nullptr);

signals:

public slots:
    int count(double sum, double spc);
    int changeK(double spc, double k);
    QVector<double> buy(QVector<double> param);
    int changeSps(double sps, double l);
    void qdebug(QString str);
};

#endif // HELPER_H
