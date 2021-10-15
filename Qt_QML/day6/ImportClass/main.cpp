#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "mywidget.h"
#include "qobjwidget.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    //qmlRegisterType<MyWidget>("MyWidget",1,0,"MyWidget");
    qmlRegisterType<QobjWidget>("QobjWidget",1,0,"QobjWidget");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
