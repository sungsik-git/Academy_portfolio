//
//  IOSDeviceView1.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.iOSDevieceArray) { item in
                    NavigationLink{
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }//: Link
                }//: Loop
            }//: List
        }//: Naviation
        // Navigation 하위 뷰에 viewModel을 environmentObject로 넘겨줌
        .environmentObject(viewModel)
    }
}

struct IOSDeviceView1_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView1()
    }
}
