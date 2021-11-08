//
//  GameEndState.swift
//  XO-game
//
//  Created by Veaceslav Chirita on 16.08.2021.
//  Copyright © 2021 plasmon. All rights reserved.
//

import Foundation

class GameEndState: PlayGameStateProtocol {
    var isMoveCompleted: Bool = false
    
    public let winnerPlayer: Player?
    weak var gameViewController: GameViewController?
    
    init(winnerPlayer: Player?, gameViewController: GameViewController) {
        self.winnerPlayer = winnerPlayer
        self.gameViewController = gameViewController
    }
    
    func addSign(at position: GameboardPosition) {}
    
    func begin() {
        gameViewController?.winnerLabel.isHidden = false
        
        if let winnerPlayer = winnerPlayer {
            Logger.shared.log(action: .gameFinished(won: winnerPlayer))
            gameViewController?.winnerLabel.text = setPlayerName(player: winnerPlayer) + " выйграл"
        } else {
            Logger.shared.log(action: .gameFinished(won: nil))
            gameViewController?.winnerLabel.text = "Нет победителя/Ничья"
        }
        
        gameViewController?.firstPlayerTurnLabel.isHidden = true
        gameViewController?.secondPlayerTurnLabel.isHidden = true
    }
    
    
    private func setPlayerName(player: Player) -> String {
        switch player {
        case .first:
            return "First"
        case .second:
            return "Second"
        case .computer:
            return "Computer"
        }
    }
}
