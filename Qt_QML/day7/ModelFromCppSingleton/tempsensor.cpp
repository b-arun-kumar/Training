#include "tempsensor.h"

TempSensor::TempSensor()
{

}

QString TempSensor::sname() const
{
    return m_sname;
}

void TempSensor::setSname(const QString &sname)
{
    m_sname = sname;
}

int TempSensor::thigh() const
{
    return m_thigh;
}

void TempSensor::setThigh(int thigh)
{
    m_thigh = thigh;
}

int TempSensor::tlow() const
{
    return m_tlow;
}

void TempSensor::setTlow(int tlow)
{
    m_tlow = tlow;
}

int TempSensor::t() const
{
    return m_t;
}

void TempSensor::setT(int t)
{
    m_t = t;
}
