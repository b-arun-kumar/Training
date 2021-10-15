#ifndef UISERVICE_H
#define UISERVICE_H

#include <QObject>
#include <QAbstractListModel>
#include "cppmodel.h"

class UiService : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int w READ width WRITE setWidth)
    Q_PROPERTY(QAbstractListModel *model READ model)

public:
    explicit UiService(QObject *parent = nullptr);

    int width() const;
    void setWidth(int width);

    QAbstractListModel *model() const;

signals:

private:
    int m_width;
    QAbstractListModel *m_model;

};

#endif // UISERVICE_H
