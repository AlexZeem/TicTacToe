import QtQuick 2.0

Image {
    id: root
    width: 50
    height: 50
    state: "defState"
    signal clicked

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }

    states: [
        State {
            name: "defState"
            PropertyChanges { target: root; source: "" }
        },
        State {
            name: "xState"
            PropertyChanges { target: root; source: "qrc:/res/icons/x.png" }
        },
        State {
            name: "oState"
            PropertyChanges { target: root; source: "qrc:/res/icons/o.png" }
        }
    ]
}
