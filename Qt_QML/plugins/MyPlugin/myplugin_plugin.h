#ifndef MYPLUGIN_PLUGIN_H
#define MYPLUGIN_PLUGIN_H

#include <QQmlExtensionPlugin>

class MyPluginPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char *uri) override;
};

#endif // MYPLUGIN_PLUGIN_H
