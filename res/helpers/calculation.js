var winnerName = ""

function findWinner() {
    var state = "defState"

    for (var i = 0; i < 3; ++i) {
        var index = i * 3
        state = repeater.itemAt(index).state
        if ("defState" != state && state == repeater.itemAt(index + 1).state && state == repeater.itemAt(index + 2).state) {
            if (state == "xState") {
                winnerName = "X won"
            } else if (state == "oState") {
                winnerName = "O won"
            }
            return true
        }
    }

    for (var j = 0; j < 3; ++j) {
        state = repeater.itemAt(j).state
        if ("defState" != state && state == repeater.itemAt(j + 3).state && state == repeater.itemAt(j + 6).state) {
            if (state == "xState") {
                winnerName = "X won"
            } else if (state == "oState") {
                winnerName = "O won"
            }
            return true
        }
    }

    state = repeater.itemAt(0).state
    if ("defState" != state && state == repeater.itemAt(4).state && state == repeater.itemAt(8).state) {
        if (state == "xState") {
            winnerName = "X won"
        } else if (state == "oState") {
            winnerName = "O won"
        }
        return true
    }

    state = repeater.itemAt(2).state
    if ("defState" != state && state == repeater.itemAt(4).state && state == repeater.itemAt(6).state) {
        if (state == "xState") {
            winnerName = "X won"
        } else if (state == "oState") {
            winnerName = "O won"
        }
        return true
    }

    return false
}

function gameResult() {
    if (winnerName != "") return winnerName
    return "Draw"
}
