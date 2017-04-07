import QtQuick 2.0
import QtQuick.Controls 1.0
import "components"

import "../helpers/calculation.js" as Judge

Item {
    id: root
    height: 260
    width: 200

    readonly property int modeLength: 9
    readonly property string xTurn: "X turn"
    readonly property string oTurn: "O turn"

    Label {
        id: header
        anchors {
            bottom: background.top
            bottomMargin: 10
            horizontalCenter: background.horizontalCenter
        }
        font.pixelSize: 22
        text: xTurn
    }

    Image {
        id: background
        anchors.centerIn: parent
        height: 180
        width: 180
        source: "qrc:/res/icons/background.png"
    }

    Grid {
        anchors.centerIn: background
        columns: 3
        spacing: 10

        Repeater {
            id: repeater
            model: modeLength
            TItem {
                onClicked: {
                    if (state != "defState") return

                    if (xTurn == header.text) {
                        header.text = oTurn
                        state = "xState"
                    } else if (oTurn == header.text) {
                        header.text = xTurn
                        state = "oState"
                    } else return

                    if (Judge.findWinner()) {
                        header.text = Judge.gameResult()
                    }
                }
            }
        }
    }

    Button {
        id: restart
        anchors {
            top: background.bottom
            topMargin: 10
            horizontalCenter: background.horizontalCenter
        }

        text: "Restart"
        onClicked: {
            for (var i = 0; i < modeLength; ++i) {
                if (repeater.itemAt(i).state != "defState")
                    repeater.itemAt(i).state = "defState"
            }
            header.text = xTurn
        }
    }
}

