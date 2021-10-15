#include "qobjwidget.h"
#include <QDebug>

QobjWidget::QobjWidget(QObject *parent) : QObject(parent)
{
    qDebug() << "created qt obj";
}
