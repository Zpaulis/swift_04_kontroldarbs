//
//  Posms.swift
//  swift_04_kontroldarbs
//
//  Created by Paulis Zabarovskis on 09/05/2022.
//

import Foundation

class Stage {
    var name: String
    var length: Float
    enum difficultyType: Int {
        case easy = 1
        case light = 2
        case medium = 3
        case difficult = 4
        case hard = 5
    }
    var stageDifficulty: difficultyType
    var location: (longitude: Double, lattitude: Double)
   //     var longitude: Double
    //    var lattitude: Double
        
  //      init(longitude: Double, lattitude: Double) {
   //         self.longitude = longitude
    //        self.lattitude = lattitude
  //      }
   // }
    
    init (name: String, length: Float, difficulty: difficultyType, longitude: Double, latitude: Double) {
        self.name = name
        self.length = length
        self.stageDifficulty = difficulty
        self.location = (longitude, latitude)
    }
    
}

