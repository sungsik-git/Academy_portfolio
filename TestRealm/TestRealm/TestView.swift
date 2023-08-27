//
//  TestView.swift
//  TestRealm
//
//  Created by KimSungSik on 2023/08/21.
//

import SwiftUI
import RealmSwift

struct TestView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                let realm = try! Realm()
                print(Realm.Configuration.defaultConfiguration.fileURL!)
            }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
