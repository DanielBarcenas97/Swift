//
//  ViewController.swift
//  1.Animaciones1
//
//  Created by PROTECO on 06/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    var contador = 1 //Declaramos un contador para llevar el control de las iamgnes
    
    @IBAction func next(_ sender: Any) {
        
        
        
        if contador < 10{
            image.image = UIImage(named: "frame_0\(contador)_delay-0.1s.gif")
            contador+=1
        }
        
        
        
        if contador > 9{
            
            image.image = UIImage(named: "frame_\(contador)_delay-0.1s.gif")  //mandamos a llamar a la imagen con el metodo UIimage(named: "nombre de la imagen")
            contador+=1
        }
       
     
        if contador == 13 { //si es igual a 13 que es el numero total de imagenes entonces reiniciamos el contador
            contador = 1
        }
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

