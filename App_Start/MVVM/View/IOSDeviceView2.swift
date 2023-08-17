//
//  IOSDeviceView2.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import SwiftUI

struct IOSDeviceView2: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20){
                Text("Your Device?")
                    .font(.title)
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
                NavigationLink {
                    IOSDeviceView3()
                } label: {
                    Text("Move to Next Page ->")
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                }

            }
        }//: ZStack
    }
}

struct IOSDeviceView2_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView2(selectedItem: "iPhone")
    }
}
