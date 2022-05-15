//
//  Trip.swift
//  swift_04_kontroldarbs
//
//  Created by Paulis Zabarovskis on 10/05/2022.
//

import Foundation
// c) Izveidot objektu klasi – braucieni.
class Trip {
    // i) dalībnieks
    var team: Team
    //  ii) ātrumposms
    var stage: Stage
    //  iii) starta laiks (Date)
    var startTime: Date
    //  iv) brauciena ilgums, sekundes (Float)
    var result: Float
    
    init (team: Team, stage: Stage, startTime: Date, result: Float) {
        self.team = team
        self.stage = stage
        self.startTime = startTime
        self.result = result
    }
    
}


