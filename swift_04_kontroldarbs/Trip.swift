//
//  Trip.swift
//  swift_04_kontroldarbs
//
//  Created by Paulis Zabarovskis on 10/05/2022.
//

import Foundation

class Trip {
    var team: Team
    var stage: Stage
    var startTime: Date
    var result: Float
    
    init (team: Team, stage: Stage, startTime: Date, result: Float) {
        self.team = team
        self.stage = stage
        self.startTime = startTime
        self.result = result
    }
    
}


