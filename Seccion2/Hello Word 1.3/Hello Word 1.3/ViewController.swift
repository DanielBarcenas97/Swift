//
//  ViewController.swift
//  Hello Word 1.3
//
//  Created by PROTECO on 20/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
  
    @IBOutlet var TextField: UITextField!
    
    @IBOutlet var Label: UILabel!
    @IBAction func buttonTapped2(_ sender: Any) {
        Label.text=TextField.text
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Hola Mundo")
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

