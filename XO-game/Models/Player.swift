//
//  Player.swift
//  XO-game
//
//  Created by Evgeny Kireev on 26/02/2019.
//  Copyright © 2019 plasmon. All rights reserved.
//

import Foundation

public enum Player: CaseIterable {
    case first
    case second
    case computer
    
    var next: Player {
        switch self {
        case .first: return .second
        case .second: return .first
        case .computer: return .computer
        }
    }
    var nextComputeStep: Player {
        switch self {
            case .first: return .computer
            case .computer: return .first
            case .second: return .second
        }
    }
    
}
