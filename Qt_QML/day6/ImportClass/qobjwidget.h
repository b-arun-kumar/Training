#ifndef QOBJWIDGET_H
#define QOBJWIDGET_H

#include <QObject>

class QobjWidget : public QObject
{
    Q_OBJECT
public:
    explicit QobjWidget(QObject *parent = nullptr);

signals:

};

#endif // QOBJWIDGET_H
