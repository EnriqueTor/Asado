//
//  ViewController.swift
//  Asado
//
//  Created by Enrique Torrendell on 1/27/17.
//  Copyright © 2017 Enrique Torrendell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var addPeopleStepper: UIStepper!
    @IBOutlet weak var asadoLabel: UILabel!
    @IBOutlet weak var chooseAsado: UISlider!
    
    var amountOfPeople: Int = 0
    var typeOfAsado: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    
    }




    func setupView() {
        
    
        addPeopleStepper.wraps = true
        addPeopleStepper.autorepeat = true
        addPeopleStepper.maximumValue = 20
        asadoLabel.text = "Indigente"
        
        
        
    }


    @IBAction func addPeople(_ sender: UIStepper) {
        
        
        
        peopleLabel.text = Int(sender.value).description
        
    }


    
    @IBAction func chooseAsadoTouched(_ sender: UISlider) {
        
        if sender.value == 0 {
            asadoLabel.text = "Indigente"
        }
        
        else if sender.value == 1 {
            asadoLabel.text = "Fin de mes"
        }
        
        else if sender.value == 2 {
            asadoLabel.text = "Clase media"
        }
        
        else if sender.value == 3 {
            asadoLabel.text = "Ricky Fort"
        }
        
        
    }
    
    
    
    @IBAction func tirameLaPosta(_ sender: UIButton) {
        
        performSegue(withIdentifier: "aComer", sender: self)
    }

}

