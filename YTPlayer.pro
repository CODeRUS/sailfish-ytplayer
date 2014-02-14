# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = YTPlayer

CONFIG += sailfishapp

SOURCES += src/YTPlayer.cpp

OTHER_FILES += \
        rpm/YTPlayer.spec \
        rpm/YTPlayer.yaml \
        YTPlayer.desktop \
        qml/pages/YoutubeClientV3.js \
        qml/pages/Settings.js \
        qml/YTPlayer.qml \
        qml/cover/Loader.qml \
        qml/cover/Default.qml \
        qml/cover/VideoOverview.qml \
        qml/pages/VideoListPage.qml \
        qml/pages/VideoOverview.qml \
        qml/pages/VideoPlayer.qml \
        qml/pages/YoutubeListItem.qml \
        qml/pages/Search.qml \
        qml/pages/VideoCategories.qml

localization.files = $$files(languages/*.qm)
localization.path = /usr/share/$${TARGET}/languages

INSTALLS += localization

lupdate_only {
SOURCES += \
        qml/YTPlayer.qml \
        qml/cover/Loader.qml \
        qml/cover/Default.qml \
        qml/cover/VideoOverview.qml \
        qml/pages/VideoListPage.qml \
        qml/pages/VideoOverview.qml \
        qml/pages/VideoPlayer.qml \
        qml/pages/YoutubeListItem.qml \
        qml/pages/Search.qml \
        qml/pages/VideoCategories.qml

TRANSLATIONS += \
        languages/en.ts
}