//
//  IOSDeviceView3.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    //@StateObject 에서 선언한 viewModel을 @EnvironmentObject 를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            
            ScrollView{
                VStack (spacing: 20 ){
                    ForEach(viewModel.iOSDevieceArray){ item in
                        Text(item.name)
                    }
                }//: VStack
                .foregroundColor(.white)
                
            }//: ScrollView
        }
    }
}

struct IOSDeviceView3_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView3()
            .environmentObject(IOSDeviceViewModel())
    }
}
