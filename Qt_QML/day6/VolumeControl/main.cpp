#include "myspeakerwidget.h"

#include <QApplication>
#include <QDebug>
#include <QSlider>
#include <QProgressBar>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MySpeakerWidget w;

    QSlider slider(&w);
    slider.setGeometry(100,100,30,300);

    QProgressBar pbar(&w);
    pbar.setGeometry(200, 100, 400, 30);

    QObject::connect(&slider, SIGNAL(sliderMoved(int)), &pbar, SLOT(setValue(int)));
    QObject::connect(&slider, SIGNAL(sliderMoved(int)), &w, SLOT(changeVolume(int)));
    QObject::connect(&slider, SIGNAL(sliderMoved(int)), &w, SLOT(changeVolume(int)), Qt::UniqueConnection);
    QObject::connect(&w, SIGNAL(sendinitDone()), &pbar, SLOT(reset()));

    w.setProperty("newProp", 1);
    qDebug() << w.property("newProp");

    w.show();
    return a.exec();
}
