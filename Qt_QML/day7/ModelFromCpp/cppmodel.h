#ifndef CPPMODEL_H
#define CPPMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QDebug>

class CppModel : public QAbstractListModel
{
    Q_OBJECT

    void createModel();
    QList<QString> m_data;
public:
    CppModel();
    // QAbstractItemModel interface
public:
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;

    // QAbstractItemModel interface
public:
    QHash<int, QByteArray> roleNames() const;
};

#endif // CPPMODEL_H
