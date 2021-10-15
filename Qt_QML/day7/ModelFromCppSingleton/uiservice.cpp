#include "uiservice.h"

UiService::UiService(QObject *parent) : QObject(parent)
{
    m_width = 100;
    m_model = new CppModel;
}

int UiService::width() const
{
    return m_width;
}

void UiService::setWidth(int width)
{
    m_width = width;
}

QAbstractListModel *UiService::model() const
{
    return m_model;
}
