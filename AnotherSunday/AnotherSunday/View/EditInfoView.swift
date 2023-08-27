//
//  EditInfoView.swift
//  AnotherSunday
//
//  Created by KimSungSik on 2023/08/26.
//

import SwiftUI

struct EditInfoView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @ObservedObject var vm: UserInfo
    @State var name: String = ""
    @State var phone: String = ""
    @Binding var selectedInfo: User
    @Binding var isOnEditInfoView: Bool
    
    
    var body: some View {
        VStack{
            DataInput(title: "Name", userInput: $selectedInfo.name)
            DataInput(title: "Phone", userInput: $selectedInfo.phone)
            
            Button {
                let editInfo = User(
                id: selectedInfo.id,
                name: selectedInfo.name,
                phone: selectedInfo.phone
                )
                vm.editInfo(user: editInfo)
            } label: {
                Text("Edit !")
            }

            
        } //: VStack
    }
}

struct EditInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EditInfoView(vm: UserInfo(), selectedInfo: .constant(User(id: "", name: "name", phone: "phone")), isOnEditInfoView: .constant(true))
    }
}
