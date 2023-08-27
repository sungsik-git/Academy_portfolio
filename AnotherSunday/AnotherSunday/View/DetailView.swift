//
//  DetailView.swift
//  AnotherSunday
//
//  Created by KimSungSik on 2023/08/26.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var vm: UserInfo
    @State private var isOnEditInfoView: Bool = false
    @State var selectedInfo: User
    
    var body: some View {
        Form {
            Section(header: Text("User Detail")){
                Text(selectedInfo.id)
                    .font(.headline)
                Text(selectedInfo.name)
                    .font(.body)
                Text(selectedInfo.phone)
                    .font(.body)
                
                Button {
                    vm.deleteInfo(key: selectedInfo.id)
                    self.mode.wrappedValue.dismiss()
                } label: {
                    Text("Delete Info")
                }

                NavigationLink{
                    // destination
                    EditInfoView(vm: vm, selectedInfo: $selectedInfo, isOnEditInfoView: $isOnEditInfoView)
                } label: {
                Text("Edit Info")
                }
            } //: Section
        } //: Form
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(vm: UserInfo(), selectedInfo: User(id: "", name: "name", phone: "phone"))
    }
}
