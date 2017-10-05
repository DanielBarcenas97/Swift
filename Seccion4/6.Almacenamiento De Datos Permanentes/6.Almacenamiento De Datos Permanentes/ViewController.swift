//
//  ViewController.swift
//  6.Almacenamiento De Datos Permanentes
//
//  Created by PROTECO on 27/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UserDefaults Clase que provee metodos para guardar datos.
        
        //UserDefaults.standard.set("Daniel",forKey:"name") //Guardaremos El nombre Daniel //Me
        let nameObject = UserDefaults.standard.object(forKey: "name") //Pasamos nuestro dato a guardar y lo pasamosa una variable let.
        //Object(forKey: "name") Regresa algo que no necesariamente es un String
        if let name = nameObject as? String{  //Como no necesariamente regresa un String lo que hacemos es un cast a String Para que no salga como optional
            print(name)
        }
        
        let arr = [1,2,3,4,5]  //declaramos nuestro arreglo a guardar
        
        UserDefaults.standard.set(arr, forKey: "array")  //Utilizamos la Clase UserDefaults para guardar datos
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray{
            print(array)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

