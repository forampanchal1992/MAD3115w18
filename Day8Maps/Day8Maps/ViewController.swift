//
//  ViewController.swift
//  Day8Maps
//
//  Created by MacStudent on 2018-03-01.
//  Copyright © 2018 Foram. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    let lamntonCollegeLocation = CLLocation(latitude: 43.773257, longitude: -72.335899)
    let regionRadius: CLLocationDistance = 50
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMap.mapType = MKMapType.standard
        centerMapOnLocation(location: lamntonCollegeLocation, title: "LambtonCollege", subTitle: "Location")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //center map on specified locaqtion
    func centerMapOnLocation(location: CLLocation, title: String, subTitle: String)
    {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        
        //focus the map on specified location
        
        myMap.setRegion(coordinateRegion, animated: true)
        
        //Drop a pin at users current location
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        
        myAnnotation.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude);
        myAnnotation.title = title
        myAnnotation.subtitle = subTitle
        //display on location
        myMap.addAnnotation(myAnnotation)
        
        
        
    }

}

