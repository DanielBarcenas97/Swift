//
//  ViewController.swift
//  9.Control del Teclado
//
//  Created by PROTECO on 03/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Agregar el metodo TouchBegan Permite que al tocar se oculte el teclado o aparesca
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //Al recibir un toque se oculta el teclado
    }
    
    //Nuestro segundo Problema es hacer funcionar el boton de intro del teclado
    //Agregar el metodo 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

