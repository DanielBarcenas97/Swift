//
//  ViewController.swift
//  7.Almacenamiento de Datos 2
//
//  Created by PROTECO on 03/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!
    
    @IBAction func Guardar(_ sender: Any) {
        UserDefaults.standard.set(numberField.text, forKey: "number") //guardamos el numero ingresado en el TextField
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let numberObject = UserDefaults.standard.object(forKey: "number")  //No regresa necesariamente un String
        
        if let number = numberObject as? String{ //Cast a String
            numberField.text=number  //mantenemos nuestro numero
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

