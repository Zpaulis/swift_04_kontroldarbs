//
//  Posms.swift
//  swift_04_kontroldarbs
//
//  Created by Paulis Zabarovskis on 09/05/2022.
//

import Foundation
// b) Izveidot objektu klasi – ātrumposms.
class Stage {
    // i) nosaukums
    var name: String
    // ii) garums, km (skaitlis ar decimālo punktu)
    var length: Float
    //  iii) sarežģītības pakāpe (vesels skaitlis, no 1 līdz 5)
    enum difficultyType: Int {
        case easy = 1
        case light = 2
        case medium = 3
        case difficult = 4
        case hard = 5
    }
    var stageDifficulty: difficultyType
    // iv) sākuma punkta geolokācijas dati (longitude, lattitude) (divi double skaitļi)
    var location: (longitude: Double, lattitude: Double)
  
    init (name: String, length: Float, difficulty: difficultyType, longitude: Double, latitude: Double) {
        self.name = name
        self.length = length
        self.stageDifficulty = difficulty
        self.location = (longitude, latitude)
    }
    
}

