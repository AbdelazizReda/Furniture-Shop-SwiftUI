//
//  SearchView.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 04/03/2023.
//

import SwiftUI

struct SearchView: View {
    @State var TextOfTF:String = ""

    var body: some View {

        HStack{
            HStack{
                Image("Search")
                    .padding(.trailing , 8)
                TextField("search about anything ...", text: $TextOfTF)
            }
            .padding(.all , 15)
            .background(Color.white)
            .cornerRadius(10)
            
            Button(action: {}) {
                Image("barcode-scanner")
                    .resizable()
                    .frame(width: 35 , height: 35)
                    .padding(.all , 10)
                    .background(Color("Primary"))
//                    .foregroundColor(Color("Primary"))

                    .cornerRadius(10)
            }
        }

    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
