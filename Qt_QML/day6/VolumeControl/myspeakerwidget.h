#ifndef MYSPEAKERWIDGET_H
#define MYSPEAKERWIDGET_H

#include <QWidget>

class MySpeakerWidget : public QWidget
{
    Q_OBJECT

public:
    MySpeakerWidget(QWidget *parent = nullptr);
    ~MySpeakerWidget();

public slots:
    void changeVolume(int);
    void initDone();

signals:
    void sendinitDone();
};
#endif // MYSPEAKERWIDGET_H
