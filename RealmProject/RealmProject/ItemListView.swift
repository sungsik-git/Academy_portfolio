//
//  ItemListView.swift
//  RealmProject
//
//  Created by KimSungSik on 2023/08/21.
//

import SwiftUI
import RealmSwift

struct ItemListView: View {
    
    // @State
    @ObservedRealmObject var group: Group
    
    var body: some View {
        NavigationView{
            List {
                ForEach(group.items) { item in
                    ItemRow(item: item)
                }
                .onMove(perform: $group.items.move)
                .onDelete(perform: $group.items.remove)
            } //: List
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Items", displayMode: .large)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(trailing: EditButton())
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        $group.items.append(Item())
                    } label: {
                        Image(systemName: "plus")
                    }.frame(maxWidth: .infinity,alignment: .trailing)

                }
            }
        } //: Navigation
    }
}

struct ItemRow: View {
    
    @ObservedRealmObject var item: Item
    
    var body: some View {
        NavigationLink(destination: ItemDetailView(item: item)) {
            Text(item.name)
            if item.isFavorite{
                Image(systemName: "heart.fill")
            }
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView(group: Group())
    }
}
