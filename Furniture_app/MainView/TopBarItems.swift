//
//  TopBarItems.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 04/03/2023.
//

import SwiftUI

struct TopBarItems: View {
    var body: some View {

        HStack{
            //menu
            Button(action: {}) {
                Image("menu")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            Spacer()
            //profile
            Button(action: {}) {
                Image("Profile")
                    .resizable()
                    .frame(width: 42, height: 42)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)

    }
}

struct TopBarItems_Previews: PreviewProvider {
    static var previews: some View {
        TopBarItems()
    }
}
