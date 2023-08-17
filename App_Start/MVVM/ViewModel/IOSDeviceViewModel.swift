//
//  IOSDeviceViewModel.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    @Published var iOSDevieceArray: [IOSDiviceModel] = []
    
    init(){
        getData()
    }
    
    //fucntion
    func getData(){
        let iphone = IOSDiviceModel(name: "iphone")
        let iPad = IOSDiviceModel(name: "iPad")
        let iMac = IOSDiviceModel(name: "iMac")
        let appleWatch = IOSDiviceModel(name: "appleWatch")
        
        self.iOSDevieceArray.append(iphone)
        self.iOSDevieceArray.append(iPad)
        self.iOSDevieceArray.append(iMac)
        self.iOSDevieceArray.append(appleWatch)
    }
}
