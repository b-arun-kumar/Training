#include "widget.h"
#include <QDebug>

Widget::Widget(QWidget *parent)
    : QWidget(parent)
{
}

Widget::~Widget()
{
}

void Widget::printChildren(QObject *obj)
{
    qDebug()<<obj->children().count()<<endl;
    QObjectList childs = obj->children();
    foreach(QObject *cobj, childs){
        printChildren(cobj);
    }
}
