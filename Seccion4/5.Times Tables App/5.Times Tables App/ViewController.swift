//
//  ViewController.swift
//  5.Times Tables App
//
//  Created by PROTECO on 27/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
    @IBOutlet var Table: UITableView!
    @IBOutlet var Slider: UISlider! 
    @IBAction func SliderChanged(_ sender: Any) {  //Cambiar el Valor del Slider
        Table.reloadData() //Valor del Slider
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 50 //Regresa 50 Renglones
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style:UITableViewCellStyle.default , reuseIdentifier:"Cell")
        cell.textLabel?.text=String((Int(Slider.value * 20)) * (indexPath.row + 1))
        //Multiplicamos el valor del Slider * 20 y le sumamos 1
        return cell //Nombre de la Celda
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

