//
//  AddNewCarView.swift
//  Firebase_Test
//
//  Created by KimSungSik on 2023/08/23.
//

import SwiftUI

struct AddNewCarView: View {
    @ObservedObject var carStore : CarStore
    @State var isHybrid = false
    @State var name: String = ""
    @State var description: String = ""
    
    var body: some View {
        
        Form {
            Section(header: Text("Car Details")) {
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                
                Toggle(isOn: $isHybrid) {
                    Text("Hybrid").font(.headline)
                }.padding()
            }
            
            Button {
                carStore.addNewCar(car: Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid))
            } label: {
                Text("Add Car")
            }
        }
    }
}


struct DataInput: View {
    
    var title: String
    @Binding var userInput: String
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

struct AddNewCarView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCarView(carStore: CarStore())
    }
}
