#include "widget.h"
#include <qpainter.h>
#include <QMouseEvent>

Widget::Widget(QWidget *parent)
    : QWidget(parent)
{
}

Widget::~Widget()
{
}

void Widget::mousePressEvent(QMouseEvent *event)
{
    qDebug() << "mousePressEvent" << endl;
    this->x1 = event->x();
    this->y1 = event->y();
    update();

}

void Widget::paintEvent(QPaintEvent *event)
{
    QPainter paint(this);
    QColor col(100,100,100);
    QPen pen;
    pen.setWidth(10);
    QBrush brush(col);
    paint.setBrush(Qt::green);
    paint.setPen(Qt::cyan);
    paint.drawEllipse(x1,y1,100,50);
}

