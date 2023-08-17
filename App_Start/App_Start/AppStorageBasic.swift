//
//  AppStorageBasic.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import SwiftUI

struct AppStorageBasic: View {
    
    @State var generalName: String?
    
    //App Stroage 를 사용하면 앱을 다시 열때 자동으로 키에서 이름을 가져옴
    @AppStorage("name") var appStrageName: String?
    
    
    var body: some View {
        VStack(spacing: 20){
            //일반적인 State
            VStack(spacing: 10){
                Text("@State로 저장")
                    .font(.headline)
                
                Text(generalName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    generalName = "Jcaob"
                } label: {
                    Text("이름 불러오기")
                }

            }//: VStack
            .padding()
            .border(.green)
            
            VStack(spacing: 10){
                    Text("@AppStorage로 저장")
                    .font(.headline)
                
                Text(appStrageName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    appStrageName = "Jcaob"
                } label: {
                    Text("이름 불러오기")
                }
            }//: VStack
            .padding()
            .border(.red)
            
        }//: VStack
    }
}

struct AppStorageBasic_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBasic()
    }
}
