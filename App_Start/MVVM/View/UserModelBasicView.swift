//
//  UserModelBasicView.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import SwiftUI

struct UserModelBasicView: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Hi1", userName: "Hi1231", followeCount: 100, isChecked: true),
        UserModel(displayName: "Hi2", userName: "Hi1232", followeCount: 55, isChecked: false),
        UserModel(displayName: "Hi3", userName: "Hi1233", followeCount: 355, isChecked: false),
        UserModel(displayName: "Hi4", userName: "Hi1234", followeCount: 80, isChecked: true)
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack{
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } //: VStack
                        
                        Spacer()
                        
                        if user.isChecked{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followeCount)")
                                .font(.headline)
                            
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }//: VStack
                        
                    } //: HStack
                    .padding(10)
                }//: Loop
            } //: Navigation
            .navigationTitle("회원 리스트")
        }
    }
}

struct UserModelBasicView_Previews: PreviewProvider {
    static var previews: some View {
        UserModelBasicView()
    }
}
