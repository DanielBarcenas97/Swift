//
//  ViewController.swift
//  Cat Years App
//
//  Created by PROTECO on 21/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var IngresaEdad: UITextField!
    @IBOutlet var EdadGato: UILabel!
    
    @IBAction func EnviarEdad(_ sender: Any) {
        let GatosEdad = Int(IngresaEdad.text!)! * 7
        EdadGato.text=String(GatosEdad)
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

