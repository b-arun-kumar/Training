#ifndef BL_H
#define BL_H

#include <QObject>

class BL : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ uname WRITE setUname NOTIFY nameChanged)
public:
    explicit BL(QObject *parent = nullptr);

    QString pswd() const;
    void setPswd(const QString &pswd);

    QString uname() const;
    void setUname(const QString &uname);

    Q_INVOKABLE void test();

signals:
    void nameChanged();
    void success();
    void failed();

public slots:
    //private slots:
    void authenticate(QString uname, QString pswd);

private:
    QString m_uname;
    QString m_pswd;

};

#endif // BL_H
