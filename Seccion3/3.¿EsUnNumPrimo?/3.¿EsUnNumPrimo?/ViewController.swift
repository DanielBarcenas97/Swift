//
//  ViewController.swift
//  3.¿EsUnNumPrimo?
//
//  Created by PROTECO on 23/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var Caja: UITextField!
    
    @IBAction func Button(_ sender: Any) {
        
        let number = Int(Caja.text!)
        
        var isPrime = true
        
        if number == 1 {
            isPrime = false
            
        }
        
        var i = 2
        
        while i < number!{
            if number! % i == 0 {
                
                isPrime=false
            }
            
            i+=1
        }
        
        if isPrime==true{
            Label.text="Si, es primo: \(number!)!"
        }else{
            Label.text="No, es Primo: \(number!)!"
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

