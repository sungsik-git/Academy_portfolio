//
//  FruitBasicView.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import SwiftUI

struct FruitBasicView: View {
    
    //property
    
    //ObservedObject 사용하여 ViewModel 객체화 -> SubView에서 사용 (부모 View 값을 넘겨받을 경우)
    //StateObject 사용하여 ViewModel 객체화 -> View가 처음 생성, 초기화 할 때, 부모 View에서 주로 사용
    
//    @ObservedObject var fruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading{
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }//:HStack
                    }//: Loop
                }
            }//:List
//            .onAppear{
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(trailing: NavigationLink(
                destination: SecondScreen(fruitViewModel: fruitViewModel), label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
            }))
            .navigationTitle("과일 리스트")
        }//: Navigation
    }
}

//SecondScreen

struct SecondScreen: View {
    //property
    @ObservedObject var fruitViewModel = FruitViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }//: Loop
                 
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Back!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }

            }
        }
    }
}

struct FruitBasicView_Previews: PreviewProvider {
    static var previews: some View {
        FruitBasicView()
    }
}
