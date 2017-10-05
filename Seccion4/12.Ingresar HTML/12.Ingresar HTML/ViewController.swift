//
//  ViewController.swift
//  12.Ingresar HTML
//
//  Created by PROTECO on 04/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let url = URL(string: "https://www.facebook.com/")!
        
        //webView.loadRequest(URLRequest(url: url))
        
        webView.loadHTMLString("<br><center><h1> Hola A Todos </h1></center>", baseURL: nil)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
