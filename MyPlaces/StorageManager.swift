//
//  StorageManager.swift
//  MyPlaces
//
//  Created by admin1 on 21.07.22.
//

import RealmSwift

let realm  = try! Realm()

class StorageManager {
    static func saveObject(_ place: Place){
        try! realm.write{
            realm.add(place)
        }
    }
}
