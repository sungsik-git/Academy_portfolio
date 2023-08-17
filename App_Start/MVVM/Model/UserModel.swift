//
//  UserModel.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import Foundation

struct UserModel: Identifiable{
    let id: String = UUID().uuidString //id값을 고유한 값을 생성하여 String으로 반환
    let displayName: String
    let userName: String
    let followeCount: Int
    let isChecked: Bool
}
