//
//  RealmModel.swift
//  TestRealm
//
//  Created by KimSungSik on 2023/08/21.
//

import UIKit
import RealmSwift

class Person: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var tall: Int = 0
}


