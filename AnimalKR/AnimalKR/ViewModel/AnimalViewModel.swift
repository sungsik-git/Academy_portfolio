//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by KimSungSik on 2023/08/15.
//

import Foundation
import SwiftUI

class AnimalViewModel: ObservableObject {
    
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    @Published var videos: [Video] = Bundle.main.decode("videos.json")
    
    
    //Gallery View
    @Published var selectedAnimal: String = "tiger"
    
    //GrideLayout
    @Published var gridLayout: [GridItem] = [GridItem(.flexible())]
    @Published var gridColumn: Double = 4.0
    
    init(){
        gridSwitch()
    }
    
    //func
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn))
    }
}
