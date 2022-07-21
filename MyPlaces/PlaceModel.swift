//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Alexey Efimov on 15/11/2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import RealmSwift

class Place: Object{
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    func savePlaces() {
        

        for place in restaurantNames {
           let image = UIImage(named: "cel_img")
            guard let imageData = image?.pngData() else {return}
           
            
           let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Ufa"
            newPlace.type = "Resturant"
            newPlace.imageData = imageData
        }

    }
}
