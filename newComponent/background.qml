import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQml 2.12

Item {
    id: background
    width: 1920
    height: 1122

    Rectangle {
        width: parent.width
        height: 50
        border.color: "#3a3a3a"
        border.width: 1
        Row {
            id: toolRow
            anchors.right: parent.right
            height: 24
            spacing: 20
            anchors.rightMargin: 20
            layoutDirection: Qt.RightToLeft
            anchors.verticalCenter: parent.verticalCenter

            Image {
                id: logo
                source: "qrc:/Image/image/company/logo_black.png"
                width: sourceSize.width
                height: sourceSize.height
            }

            Image {
                id: closeButton
                source: "qrc:/Image/image/normal/closeDialog.png"
                width: sourceSize.width
                height: sourceSize.height
                MouseArea {
                    anchors.fill: parent
                    onClicked: Qt.quit()
                }
            }
        }
    }

    Rectangle {
        y: 50
        width: parent.width
        height: parent.height - 50
        border.color: "#3a3a3a"
        border.width: 1
    }
}
