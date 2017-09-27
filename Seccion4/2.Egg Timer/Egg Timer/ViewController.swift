//
//  ViewController.swift
//  Egg Timer
//
//  Created by PROTECO on 26/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 220 //Tiempo inicial en segundos
    
    func degreaseTimer(){  //Metodo para nuestro contador
        if time > 0{
            time-=1   //Decrementamos en 1
            timerLabel.text=String(time)
        }else{
            timer.invalidate()  //Detenemos el contador pero aqui nunca pasara esta accion
            //La ponemos por buena practica
        }
        
    }
    

    @IBOutlet var timerLabel: UILabel!
    @IBAction func Play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.degreaseTimer), userInfo: nil, repeats: true)
        
        // timeInterval : 1 En esta parte estamos definiendo nuestro intervalo de tiempo para nuestro contador en 1 para cada segundo
        //tergef : self     Para que se aplique nuestro contador asi mismo en la misma clase
        //selector: #selector(ViewController.degreaseTimer) Por cada intervalo de tiempo (En este caso cada segundo) llamamos a un metodo para realizar una accion en nuestra vista.
        //user info: informacion de usuario Nula
        //repeats: true Que nuestro contador se repita siempre por eso True
    }
    @IBAction func Pausa(_ sender: Any) {
        timer.invalidate() //Detenemos el Timer (Contador) Pausa
    }
    @IBAction func Reset(_ sender: Any) {
        time=220   //reiniciamos nuestra variable time
        timerLabel.text=String(time)   //Mandamos el nuevo time a la vista
    }
    @IBAction func mas10(_ sender: Any) {
        time+=10  //Adicionamos 10 a nuestro contador
        timerLabel.text=String(time)  //Lo pasamos a la etiqueta
    }
    
    @IBAction func Minus10(_ sender: Any) {
        if time > 10 {  //Si es mayor a 10
           time-=10  //Decrementamos en 10
           timerLabel.text=String(time) //Lo pasamos a la etiqueta 
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

