#include "cppmodel.h"

CppModel::CppModel()
{
    createModel();
}

void CppModel::createModel(){
    for(int i=0; i<10;i++){
        QString name = QString("Name") + QString::number(1000*i);
        this->m_data.append(name);
    }
}

int CppModel::rowCount(const QModelIndex &parent) const
{
    return this->m_data.size();
}

QVariant CppModel::data(const QModelIndex &index, int role) const
{
    int row = index.row();
    if (role == 0)
        return this->m_data.at(row);
    else
        return "number";
}

QHash<int, QByteArray> CppModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[0] = "name";
    roles[1] = "number";
    return roles;
}
