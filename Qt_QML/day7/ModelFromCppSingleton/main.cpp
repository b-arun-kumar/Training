#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "cppmodel.h"
#include <QQmlContext>
#include "uiservice.h"

static QObject* singletonProvider(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)

    UiService *us = new UiService;
    return us;
}

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //engine.rootContext()->setContextProperty("CppModel", new CppModel());

    qmlRegisterSingletonType<UiService>("UiService",1,0,"UiService", singletonProvider);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
