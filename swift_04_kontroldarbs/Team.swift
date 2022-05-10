//
//  Teams.swift
//  swift_04_kontroldarbs
//
//  Created by Paulis Zabarovskis on 09/05/2022.
//

import Foundation
import UIKit


class Team {
    struct Pilot {
        var firstname: String
        var secondname: String
        var photo: UIImage?
        
        init (firstname: String, secondname: String, photoName: String) {
            self.firstname = firstname
            self.secondname = secondname
            self.photo = UIImage.init(named: photoName)
        }
    }
    var pilot: Pilot
    
    struct Codriver {
        var firstname: String
        var secondname: String
        var photo: UIImage?
        
        init (firstname: String, secondname: String, photoName: String) {
            self.firstname = firstname
            self.secondname = secondname
            self.photo = UIImage.init(named: photoName)
        }
    }
    var codriver: Codriver
    var teamNumber: Int
    var carCategory: String
        struct Car {
            var brand: String
            var model: String
            
            init (brand: String, model: String) {
                self.brand = brand
                self.model = model
            }
        }
    var car: Car
    init (pilot: Pilot, codriver: Codriver, teamNumber: Int, carCategory: String, car: Car)
    {
        self.pilot = pilot
        self.codriver = codriver
        self.teamNumber = teamNumber
        self.carCategory = carCategory
        self.car = car
    }
        
    }
    





