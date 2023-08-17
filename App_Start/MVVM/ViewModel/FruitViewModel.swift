//
//  FruitViewModel.swift
//  App_Start
//
//  Created by KimSungSik on 2023/08/15.
//

import Foundation

class FruitViewModel: ObservableObject{
    //property
    
    //@Published wrapper는 struct의 @State와 유사하게 사용
    //@Published는 배열의 값이 View에서 변경이 되면 변경사항을 알아내고 변경 해줌
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    //init
    init(){
        getFruit()
    }
    
    
    //function
    
    // Fruit 생성하고 Array 에 추가하는 함수
    func getFruit(){
        let fruit1 = FruitModel(name: "apple", count: 1)
        let fruit2 = FruitModel(name: "banana", count: 20)
        let fruit3 = FruitModel(name: "orange", count: 50)
        
        //3초 딜레이 후, fruitArray 에 선언된 값을 집어넣기
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}
