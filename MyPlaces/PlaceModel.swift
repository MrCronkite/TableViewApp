//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by admin1 on 15.07.22.
//


import UIKit


struct Place{
    var name: String?
    var location: String?
    var type: String?
    var image: UIImage?
    var placesImage: String?
    
    static let placesRest = ["ШОК","Классик", "Балкан Гриль", "Токини", "Спички", "Васельки","Мир" ,"ЛидБир"]
    
    static func getPlaces() ->[Place]{
        var places = [Place]()
        
        for place in placesRest{
            places.append(Place(name: place, location: "Minsk", type: "Restoran", image: nil, placesImage: "cell_img"))
        }
        
        return places
    }
    
}
