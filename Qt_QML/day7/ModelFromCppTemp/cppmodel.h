#ifndef CPPMODEL_H
#define CPPMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QDebug>
#include <tempsensor.h>

class CppModel : public QAbstractListModel
{
    Q_OBJECT

    void createModel();
    QList<TempSensor*> m_data;
public:
    CppModel();
    // QAbstractItemModel interface
public:
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;

    // QAbstractItemModel interface
public:
    QHash<int, QByteArray> roleNames() const;
    // QAbstractItemModel interface

    enum vars{sname, thigh, tlow, t};

public:
    int columnCount(const QModelIndex &parent) const;

    // QAbstractItemModel interface
public:
    bool setData(const QModelIndex &index, const QVariant &value, int role);
};

#endif // CPPMODEL_H
