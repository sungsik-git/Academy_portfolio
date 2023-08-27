//
//  Group.swift
//  RealmProject
//
//  Created by KimSungSik on 2023/08/21.
//

import Foundation
import RealmSwift

final class Group: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    
    @Persisted var items = RealmSwift.List<Item>()
    
    
}
