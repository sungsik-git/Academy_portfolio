//
//  ContentView.swift
//  AnotherSunday
//
//  Created by KimSungSik on 2023/08/18.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm: UserInfo = UserInfo()
    
    var body: some View {
                NavigationStack{
                    VStack{
                        Text("데이터 베이스 변경사항 : \(vm.changeCount)")
                        List {
                            ForEach(vm.users, id: \.self) { user in
                                NavigationLink {
                                    //destination
                                    DetailView(vm: vm, selectedInfo: user)
                                }label: {
                                    ListCell(user: user)
                                }
                            }
                            
                        } //: List
                        .navigationBarItems(leading: NavigationLink(destination: HomeView(vm: vm), label: {
                            Image(systemName: "pencil")
                            Text("ADD")
                        }))
                        
                        NavigationLink(destination: HomeView(vm: vm), label: {
                            Image(systemName: "bolt.fill")
                            Text("Insert Your Info")
                        })
                        
                    } //: VStack
                } //: Navigation
                .onAppear{
                    vm.listenToRealtimeDatabase()
                }
                .onDisappear{
                    vm.stopListening()
                }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListCell: View{
    var user: User
    
    var body: some View{
        HStack{
            Text(user.name)
        } //: HStack
    }
}
