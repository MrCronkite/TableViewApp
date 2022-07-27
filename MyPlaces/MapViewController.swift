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
        setupPlacemark()

    }
    
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true)
    }
    
    private func setupPlacemark() {
        guard let loccation = place.location else {return}
        
        //конвертирует адрес
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(loccation) {(placemarks, error) in
            if let error = error{
                print(error)
                return
            }
            guard let placemarks = placemarks else {return}
            
            let placemark = placemarks.first
            
            //описание точки на карте
            let annotation = MKPointAnnotation()
            annotation.title = self.place.name
            annotation.subtitle = self.place.type
            
            guard let placemarkLocation = placemark?.location else {return}
            
            annotation.coordinate = placemarkLocation.coordinate
            
            self.mapView.showAnnotations([annotation], animated: true)
            self.mapView.selectAnnotation(annotation, animated: true)
        }
    }
    

}
