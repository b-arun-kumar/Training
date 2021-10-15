#ifndef TEMPSENSOR_H
#define TEMPSENSOR_H

#include <QString>

class TempSensor
{
public:
    TempSensor();
    QString sname() const;
    void setSname(const QString &sname);

    int thigh() const;
    void setThigh(int thigh);

    int tlow() const;
    void setTlow(int tlow);

    int t() const;
    void setT(int t);

private:
    QString m_sname;
    int m_thigh;
    int m_tlow;
    int m_t;

};

#endif // TEMPSENSOR_H
