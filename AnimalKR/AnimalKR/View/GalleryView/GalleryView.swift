//
//  GallaryView.swift
//  AnimalKR
//
//  Created by KimSungSik on 2023/08/15.
//

import SwiftUI

struct GalleryView: View {
    
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    
                    Image(vm.selectedAnimal)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                        
                    
                }
            } //: Scroll
            .navigationBarTitle("갤러리", displayMode: .inline)
        } //: Navigation
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(vm: AnimalViewModel())
    }
}
