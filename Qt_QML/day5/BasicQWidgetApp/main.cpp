#include "widget.h"

#include <QApplication>
#include <QPushButton>
#include <QDebug>

int main(int argc, char *argv[])
{
    //QApplication a(argc, argv);
    Widget w;
    w.show();

    QPushButton pb("push");
    pb.show();

    //while(1);

    qDebug() << Q_FUNC_INFO << "before" << endl;
    //a.exec();
    qDebug() << Q_FUNC_INFO << "after" << endl;

    return 0;
}
