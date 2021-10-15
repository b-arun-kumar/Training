#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QDebug>

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

    void mousePressEvent(QMouseEvent *event) override;
    void paintEvent(QPaintEvent *event) override;

private:
    int x1,y1;
};
#endif // WIDGET_H
