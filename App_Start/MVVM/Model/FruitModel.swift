//
//  FruitModel.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import Foundation

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
