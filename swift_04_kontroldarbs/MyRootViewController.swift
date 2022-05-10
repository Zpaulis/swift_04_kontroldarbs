//
//  ViewController.swift
//  swift_04_kontroldarbs
//
//  Created by Paulis Zabarovskis on 09/05/2022.
//

import UIKit
import Foundation


class MyRootViewController: UITableViewController {
    //MARK: - 4) Lietojumprogrammas UI kontrolieri izveidot datu modeli:
    var teams = [Team]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load/create data
                self.loadData()
        
        
        // Paskatīties, kas sanācis
        
        self.navigationItem.title = "Paskatīties, kas sanācis"
        
            }
    
    
            func loadData() {
                // a) Izveidot masīvu ar 5-6 dalībniekiem, projekta assets resursos ielādēt dalībnieku foto (sameklēt internetā).
                teams = [Team(pilot: Team.Pilot(firstname: "Ramona",
                                                 secondname: "Karlsson",
                                                 photoName: "01_P_Ramona_Karlsson.png"),
                               codriver: Team.Codriver(firstname: "Miriam",
                                                       secondname: "Walfridsson",
                                                       photoName: "01_Co_Miriam_Walfridsson.png"),
                               teamNumber: 1,
                               carCategory: "4WD",
                               car: Team.Car(brand: "Škoda",
                                             model: "Fabia WRC_T4WD")),
                          
                          Team(pilot: Team.Pilot(firstname: "Kalle",
                                                 secondname: "Rovanpera",
                                                 photoName: "02_P_Kalle Rovanpera.png"),
                               codriver: Team.Codriver(firstname: "Jonne",
                                                       secondname: "Halttunen",
                                                       photoName: "02_Co_Jonne Halttunen.png"),
                               teamNumber: 2,
                               carCategory: "RC1",
                               car: Team.Car(brand: "Toyota",
                                             model: "GR Yaris")),
                          
                          Team(pilot: Team.Pilot(firstname: "Catie",
                                                 secondname: "Munnings",
                                                 photoName: "03_P_Catie Munnings.png"),
                               codriver: Team.Codriver(firstname: "Ida",
                                                       secondname: "Lidebjer",
                                                       photoName: "03_Co_Ida Lidebjer Granberg.png"),
                               teamNumber: 3,
                               carCategory: "RC4",
                               car: Team.Car(brand: "Ford",
                                             model: "Fiesta R2T19")),
                         
                         Team(pilot: Team.Pilot(firstname: "Mārtiņš",
                                                secondname: "Sesks",
                                                photoName: "04_P_Martins Sesks.png"),
                              codriver: Team.Codriver(firstname: "Renārs",
                                                      secondname: "Francis",
                                                      photoName: "04_Co_Renars Francis.png"),
                              teamNumber: 4,
                              carCategory: "SM2",
                              car: Team.Car(brand: "Škoda",
                                            model: "Fabia Rally2 Kit")),
                         
                         Team(pilot: Team.Pilot(firstname: "Paolo",
                                                secondname: "Andreucci",
                                                photoName: "05_P_Paolo Andreucci.png"),
                              codriver: Team.Codriver(firstname: "Anne",
                                                      secondname: "Andreussi",
                                                      photoName: "05_Co_Anna Andreussi.png"),
                              teamNumber: 5,
                              carCategory: "R2C",
                              car: Team.Car(brand: "Peugeot",
                                            model: "208 Rally4")),
                         
                         Team(pilot: Team.Pilot(firstname: "Tamara",
                                                secondname: "Molinaro",
                                                photoName: "06_P_Tamara Molinaro.png"),
                              codriver: Team.Codriver(firstname: "Lisa",
                                                      secondname: "Bollito",
                                                      photoName: "06_Co_Lisa Bollito.png"),
                              teamNumber: 6,
                              carCategory: "R2B",
                              car: Team.Car(brand: "Citroân",
                                            model: "C2 R2"))
                ]
                
                
                
                
                
                
                
            }
    
    // Paskatāmies, kas sanācis
    
    
    // Sekciju skaits
        override func numberOfSections(in tableView: UITableView) -> Int {
        //    return 1
 //           return self.carList.count        // 2 !
            return 1
        }

    
    // Sunu skaits katra sekcija
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //    return 20
        //    let made:CarMadeEntity = self.carList[section]
            return teams.count
      //      return made.carModelList.count
    //        return self.carList[section].carModelList.count
        }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StandardcellIdentifier")
// Get data item
        // Get section data = Made
  //      let made: Team = self.teams[indexPath.section]
// Get model in section
        let made = teams[indexPath.row]

// Made + Model
        let pilotAndCoDriver = made.pilot.firstname + " " + made.pilot.secondname + " un " + made.codriver.firstname + " " + made.codriver.secondname
        cell?.textLabel?.text = pilotAndCoDriver

 //       if let auto = made.car.brand {
        cell?.detailTextLabel?.text = made.car.brand + " " + made.car.model
/*        }
        else {
            cell?.detailTextLabel?.text = nil
        } */
// Image
        cell?.imageView?.image = made.pilot.photo

        return cell!
    }

    
    
}

