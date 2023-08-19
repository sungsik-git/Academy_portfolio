//
//  ContentView.swift
//  RealmTestProject
//
//  Created by KimSungSik on 2023/08/19.
//

import SwiftUI
import RealmSwift


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
