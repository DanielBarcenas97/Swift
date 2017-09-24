//
//  ViewController.swift
//  IngresaNombre
//
//  Created by PROTECO on 21/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var IngresaNombre: UITextField!
    @IBOutlet var Nombre: UILabel!

    @IBAction func Enviar(_ sender: Any) {
        Nombre.text=IngresaNombre.text
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

