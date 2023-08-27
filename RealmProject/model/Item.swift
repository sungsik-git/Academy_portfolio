//
//  Item.swift
//  RealmProject
//
//  Created by KimSungSik on 2023/08/21.
//

import Foundation
import RealmSwift

class Item: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey:  true) var _id: ObjectId
    @Persisted var name = "\(randomAdjectives.randomElement()!) \(randomNouns.randomElement()!)"
    @Persisted var isFavorite = false
    
    @Persisted(originProperty: "items") var group: LinkingObjects<Group>
}

let randomAdjectives = [
    "A", "B", "C", "D", "E", "F", "G", "H"
]

let randomNouns = [
    "a", "b", "c", "d", "e", "f", "g", "h"
]
