//
//  ViewController.swift
//  CuantosDedosTengo
//
//  Created by PROTECO on 23/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var TextField: UITextField!

    @IBAction func Button(_ sender: Any) {
        let aleatorio = String(arc4random_uniform(6))
        if TextField.text==aleatorio {
           Label.text = "Ganaste"
        }else{
           Label.text = "Perdiste " + aleatorio + "."
        }
    }
    @IBOutlet var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

