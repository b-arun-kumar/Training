#include "myspeakerwidget.h"
#include "QDebug"
#include "speaker.h"
#include <QTimer>

MySpeakerWidget::MySpeakerWidget(QWidget *parent)
    : QWidget(parent)
{
    QTimer *t1 = new QTimer;
    t1->setInterval(5000);
    connect(t1, SIGNAL(timeout()), this, SLOT(initDone()));
    t1->start();
}

void MySpeakerWidget::initDone()
{
    QTimer *t = qobject_cast<QTimer*>(this->sender());
    qDebug() << Q_FUNC_INFO;
    emit sendinitDone();
    t->stop();
}

MySpeakerWidget::~MySpeakerWidget()
{
}

void MySpeakerWidget::changeVolume(int Volume)
{
    qDebug() << "Volume change = " << Volume;
    Speaker spk;
    spk.setVolume(Volume);
}

