//
//  FirstViewController.swift
//  10.Lista de Pendientes
//
//  Created by PROTECO on 04/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    var items:[String] = []
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //Fin
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        
        
        if let tempItems = itemsObject as? [String]{
            items = tempItems
        }
        
        table.reloadData()
        
        UserDefaults.standard.set(items, forKey: "items")
        
    }
    
    /*
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == UITableViewCellEditingStyle.Delete {
     numbers.removeAtIndex(indexPath.row)
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
     }
     }
     */
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {  //metodo para eliminar items
        if editingStyle == UITableViewCellEditingStyle.delete { //metodo para eliminiar items
            items.remove(at: indexPath.row)  //eliminar items
            table.reloadData() //recargar tabla
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

