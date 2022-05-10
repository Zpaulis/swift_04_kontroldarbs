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
    enum difficulty: Int {
        case easy = 1
        case light = 2
        case medium = 3
        case difficult = 4
        case hard = 5
    }
    struct coordinates {
        var longitude: Double
        var lattitude: Double
        
        init(longitude: Double, lattitude: Double) {
            self.longitude = longitude
            self.lattitude = lattitude
        }
    }
    
    init (name: String, length: Float) {
        self.name = name
        self.length = length
    }
    
}

