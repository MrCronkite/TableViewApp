//
//  MapViewController.swift
//  MyPlaces
//
//  Created by admin1 on 27.07.22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var place: Place!

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true)
    }
    

}
