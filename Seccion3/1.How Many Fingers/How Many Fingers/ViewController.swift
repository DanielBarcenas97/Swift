//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Rob Percival on 12/07/2016.
//  Copyright © 2016 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fingersTextField: UITextField!
    
    @IBAction func guess(_ sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingersTextField.text == diceRoll {
            
            resultLabel.text = "Correcto"
            
        } else {
            
            resultLabel.text = "Mal, el numero es" + diceRoll + "."
            
        }
        
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

