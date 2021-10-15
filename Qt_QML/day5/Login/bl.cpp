#include "bl.h"
#include <QDebug>

BL::BL(QObject *parent) : QObject(parent)
{

}

QString BL::pswd() const
{
    return m_pswd;
}

void BL::setPswd(const QString &pswd)
{
    m_pswd = pswd;
}

QString BL::uname() const
{
    return m_uname;
}

void BL::setUname(const QString &uname)
{
    m_uname = uname;
    emit nameChanged();
}

void BL::test()
{
    qDebug() << Q_FUNC_INFO;
}

void BL::authenticate(QString uname, QString pswd)
{
    qDebug() << "qt"<< uname << pswd;
    if(uname.compare(pswd) == 0)
        emit success();
    else
        emit failed();
}
