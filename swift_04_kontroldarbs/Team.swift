//
//  Teams.swift
//  swift_04_kontroldarbs
//
//  Created by Paulis Zabarovskis on 09/05/2022.
//

import Foundation
import UIKit

// a) Izveidot objektu klasi – dalībnieks.
class Team {
    //    i) pilota vārds, uzvārds, foto
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
   // ii) stūrmaņa vārds, uzvārds, foto
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
    // iii) ekipāžas numurs (vesels skaitlis)
    var teamNumber: Int
    //     iv) automašīnas kategorija (teksts)
    var carCategory: String
    //    v) automašīnas marka un modelis (teksts)
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
    





