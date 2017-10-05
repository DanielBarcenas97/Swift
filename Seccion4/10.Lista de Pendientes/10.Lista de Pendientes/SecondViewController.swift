//
//  SecondViewController.swift
//  10.Lista de Pendientes
//
//  Created by PROTECO on 04/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var agregar: UITextField!
    
    @IBAction func guardar(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String]{
            items = tempItems
            items.append(agregar.text!)
        }else {
            items = [agregar.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        agregar.text = ""
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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

