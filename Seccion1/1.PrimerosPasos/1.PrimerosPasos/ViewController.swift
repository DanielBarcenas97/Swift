//
//  ViewController.swift
//  1.PrimerosPasos
//
//  Created by PROTECO on 12/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //TextField:Cuadro donde introducimos contenido
    @IBOutlet var TextField: UITextField!
    //Etiqueta: Muestra algun tipo de contenido
    @IBOutlet var Etiqueta: UILabel!
    //Nos ayuda a realizar alguna accion
    @IBAction func Button(_ sender: Any) {
        //Mandamos nuestro contenido del textField a la etiqueta vacia
        Etiqueta.text=TextField.text
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

