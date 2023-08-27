//
//  ItemDetailView.swift
//  RealmProject
//
//  Created by KimSungSik on 2023/08/21.
//

import SwiftUI
import RealmSwift

struct ItemDetailView: View {
    
    @ObservedRealmObject var item: Item
    
    @Environment(\.realm) var realm
    @Environment(\.realmConfiguration) var conf
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Enter a new name:")
            
            TextField("New name", text: $item.name)
                .textFieldStyle(.roundedBorder)
                .navigationBarTitle(item.name)
                .navigationBarItems(trailing: Toggle(isOn: $item.isFavorite){
                    Image(systemName: item.isFavorite ? "heart.fill" : "heart")
                })
            
            Button {
                if let newItem = item.thaw(){
                    newItem.name = "name"
                }
//                var conf = Realm.Configuration.defaultConfiguration
//                conf.inMemoryIdentifier = "test"
//                let realm = try !Realm(configuration: conf)
//
            } label: {
                Text("delete")
            }

        })
        .padding()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetailView(item: Item() )
        }
    }
}
