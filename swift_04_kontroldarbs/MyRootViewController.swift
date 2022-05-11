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
    var stages = [Stage]()
    var trips = [Trip]()

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
                
                stages = [Stage(name: "SS1 Litene 1",
                                length: 3.87,
                                difficulty: .light,
                                longitude: 57.238918,
                                latitude: 26.905813),
                          
                          Stage(name: "SS2 Sendija 1",
                                          length: 3.93,
                                          difficulty: .medium,
                                          longitude: 57.162755,
                                          latitude: 26.917791),
                          
                          Stage(name: "SS3 Kamalda 1",
                                length: 4.30,
                                          difficulty: .easy,
                                          longitude: 57.187437,
                                          latitude: 26.60305),
                          
                          Stage(name: "SS4 Litene 2",
                                length: 3.87,
                                difficulty: .light,
                                longitude: 57.238918,
                                latitude: 26.905813),
                          
                          Stage(name: "SS5 Sendija 2",
                                          length: 3.93,
                                          difficulty: .medium,
                                          longitude: 57.162755,
                                          latitude: 26.917791),
                          
                          Stage(name: "SS6 Kamalda 2",
                                length: 4.30,
                                          difficulty: .easy,
                                          longitude: 57.187437,
                                          latitude: 26.60305)
                ]
                // Apnika drukāt datus
                for _ in 1...12 {
                    
                    let randomTeam = Int.random(in: 0..<6)
                    let randomStage = Int.random(in: 0..<6)
                    let timeInterval = TimeInterval(Int.random(in: 600..<1200))
                    let randomResult = Float.random(in: 80..<200)
                    trips.append(Trip(team: teams[randomTeam],
                                      stage: stages[randomStage],
                                      startTime: Date() - timeInterval,
                                      result: randomResult))
                }
                
            }
    
    // Paskatāmies, kas sanācis
    
    // Sekciju skaits
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    // Šūnu skaits katrā sekcijā
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return teams.count
        case 1:
            return stages.count
        case 2:
            return trips.count
        default:
            return 1
        }
    }
    // Salādējam datus
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StandardcellIdentifier")
        let section = indexPath.section
        // Get model in section
        switch section {
        case 0:
            let made = teams[indexPath.row]
            // Made + Model
            let pilotAndCoDriver = made.pilot.firstname + " " + made.pilot.secondname + " un " + made.codriver.firstname + " " + made.codriver.secondname
            cell?.textLabel?.text = pilotAndCoDriver
            cell?.detailTextLabel?.text = made.car.brand + " " + made.car.model
            // Image
            cell?.imageView?.image = made.pilot.photo
            return cell!
        case 1:
            let made = stages[indexPath.row]
            let nameAndLength = "Posma " + made.name + " garums ir " + String(made.length) + "km"
            cell?.textLabel?.text = nameAndLength
            cell?.detailTextLabel?.text = "Trases sarežģītība ir \(made.stageDifficulty)"
            return cell!
            
        case 2:
            let made = trips[indexPath.row]
            let teamAndStage = made.team.pilot.firstname + " un " + made.team.codriver.firstname + " veica posmu " + made.stage.name + " (" + String(made.stage.length) + " km)"
            cell?.textLabel?.text = teamAndStage
            // Tiekam galā ar "Date" formātu
            let dateFormatterPrint = DateFormatter()
            dateFormatterPrint.dateFormat = "yyyy-MM-dd HH:mm:ss"
            let startaLaiks = dateFormatterPrint.string(from: made.startTime)
            cell?.detailTextLabel?.text = "Startēja \(startaLaiks) un veica trasi \(made.result) sekundēs"
            return cell!

        default:
            return cell!
        }
        
    }
    // Protocol method - for section title
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // Made object
        switch section {
        case 0:
            return "Komandu saraksts"
        case 1:
            return "Posmu saraksts"
        case 2:
            return "Improvizēti rezultāti"
       default:
            return "Kaut kāds ERRORs"
        }
    }
    
}

