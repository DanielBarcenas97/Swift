//
//  ViewController.swift
//  Menu Bars
//
//  Created by PROTECO on 26/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer=Timer()  //Timer Como atributo
    
    @IBAction func Camara(_ sender: Any) {
        timer.invalidate()  //Detener el contador
    }
    
    func processTimer(){
        print("Ha pasado un segundo") //Cada que pase un segundo se imprimira en la consola
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer=Timer.init(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        /*
        timer=Timer.init (intervalo de tiempo, Queremos que el timer trabaje consigomismo,Pasamos un metodo para que cada que paso nuestro intervalo de tiempo emprima algo en pantalla, informacion de usuario nula, Que se Repita )
        */
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
