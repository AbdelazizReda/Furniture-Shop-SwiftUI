//
//  TitleShow.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 04/03/2023.
//

import SwiftUI

struct TitleShow: View {
    var body: some View {

        Text("Find The \nBest ")
            .font(.custom("PlayfairDisplay-Regular", size: 28))
//                    .foregroundColor(Color("primary"))
        + Text("Furnutiuer")
            .font(.custom("PlayfairDisplay-Regular", size: 28))    }
}

struct TitleShow_Previews: PreviewProvider {
    static var previews: some View {
        TitleShow()
    }
}
