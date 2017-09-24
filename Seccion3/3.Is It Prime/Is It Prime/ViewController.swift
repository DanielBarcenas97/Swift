//
//  ViewController.swift
//  Is It Prime
//
//  Created by Rob Percival on 12/07/2016.
//  Copyright © 2016 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    
    @IBAction func isItPrime(_ sender: AnyObject) {
        
        if let userEnteredString = numberTextField.text {
        
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }

                if isPrime {
                    
                    resultLabel.text = "\(number) is prime!"
                    
                } else {
                    
                    resultLabel.text = "\(number) is not prime"
                    
                }
                
                
            } else {
                
                resultLabel.text = "Please enter a positive whole number"
                
            }
            
            
        }
        
        
    }
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

