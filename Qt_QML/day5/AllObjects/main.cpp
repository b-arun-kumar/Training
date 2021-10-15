#include "widget.h"

#include <QApplication>
#include <QPushButton>
#include <QCheckBox>
#include <QRadioButton>
#include <QSlider>
#include <QCalendarWidget>
#include <QProgressBar>
#include <QLineEdit>
#include <QTextEdit>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Widget w;

    //    QPushButton o1(&w);// o1.show();
    //    QCheckBox o2(&w);// o2.show();
    //    QRadioButton o3(&w);// o3.show();
    //    QSlider o4(&w);// o4.show();
    //    QCalendarWidget o5(&w);// o5.show();
    //    QProgressBar o6(&w);// o6.show();
    //    QLineEdit o7(&w);// o7.show();
    //    QTextEdit o8(&w);// o8.show();

    QPushButton o1("1",&w);
    o1.setGeometry(100,100,100,100);

    QPushButton o2("2",&o1);
    o2.setGeometry(0,0,50,50);

    QCheckBox o3("3", &w);
    o3.setGeometry(0,0,50,50);

    w.printChildren(&w);

    w.show();
    return a.exec();
}
