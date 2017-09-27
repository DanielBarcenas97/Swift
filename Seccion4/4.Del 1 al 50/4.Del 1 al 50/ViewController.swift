//
//  ViewController.swift
//  4.Del 1 al 50
//
//  Created by PROTECO on 27/09/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 50 //Regresa 50 Renglones en nuestra Tabla
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style:UITableViewCellStyle.default,reuseIdentifier:"cell")
        cell.textLabel?.text = String(indexPath.row + 1) //Numero de Celda y como empieza en 0 le sumamos 1
        return cell //Regresa el contenido de nuestra celda // Numero de Celda
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


