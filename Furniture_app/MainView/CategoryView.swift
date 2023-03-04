//
//  CategoryView.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 04/03/2023.
//

import SwiftUI

struct CategoryView: View {
    
    private let catgoryData:[String] = ["All" , "Soft" , "Chairs", "Chairs", "Chairs", "Chairs", "Chairs"]
    let text:String
    let isActive: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
            Color.black
                .frame(width: 20, height:2)
                .clipShape(Capsule())
            
            
        }
        .padding(.leading)
        


    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(text: "Test", isActive: false)
    }
}
