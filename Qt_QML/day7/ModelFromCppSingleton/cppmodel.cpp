#include "cppmodel.h"

CppModel::CppModel()
{
    createModel();
}

void CppModel::createModel(){
    for(int i=0; i<10;i++){
        TempSensor *ts = new TempSensor();
        ts->setSname(QString("Name") + QString::number(1000*i));
        ts->setT(i);
        ts->setTlow(i*10);
        ts->setThigh(i*100);
        this->m_data.append(ts);
    }
}

int CppModel::rowCount(const QModelIndex &parent) const
{
    return this->m_data.size();
}

QVariant CppModel::data(const QModelIndex &index, int role) const
{
    int row = index.row();
    TempSensor *ts = this->m_data.at(row);
    if (role == sname)
        return ts->sname();
    else if (role == thigh)
        return ts->thigh();
    else if (role == tlow)
        return ts->tlow();
    else if (role == t)
        return ts->t();
    else
        return 0;
}

QHash<int, QByteArray> CppModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[sname] = "sname";
    roles[thigh] = "thigh";
    roles[tlow] = "tlow";
    roles[t] = "t";
    return roles;
}

int CppModel::columnCount(const QModelIndex &parent) const
{
    return 4;
}
