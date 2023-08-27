//
//  ContentView.swift
//  RealmProject
//
//  Created by KimSungSik on 2023/08/21.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    @ObservedResults(Group.self) var groups
    
    var body: some View {
        if let group = groups.first {
            ItemListView(group: group)
        }else{
            ProgressView()
                .onAppear{
                    $groups.append(Group())
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
