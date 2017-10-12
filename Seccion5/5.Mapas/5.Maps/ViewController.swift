//
//  ViewController.swift
//  5.Maps
//
//  Created by PROTECO on 12/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet var mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //19.327958,-99.2170754
        // Do any additional setup after loading the view, typically from a nib.
        let latitud : CLLocationDegrees = 19.3322302
        let longitud : CLLocationDegrees = -99.1884834
        let latDelta: CLLocationDegrees = 0.05
        let lonDelta: CLLocationDegrees = 0.05
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta,longitudeDelta:lonDelta)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude:latitud, longitude: longitud)
        
        let region = MKCoordinateRegion(center:location,span:span)
        
        mapa.setRegion(region,animated:true)
        
        let annotation = MKPointAnnotation()
        
        annotation.title = "Proteco"
        
        annotation.subtitle = "UNAM"
        
        annotation.coordinate = location
        
        mapa.addAnnotation(annotation)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

