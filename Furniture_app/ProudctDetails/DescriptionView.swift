//
//  DescriptionView.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 05/03/2023.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Luxury Chaires \nData")
                .font(.title)
                .fontWeight(.bold)
            HStack(spacing: 4){
                ForEach(0..<4){ items in
                    Image("star")
                }
                Text("(4.9)")
                    .opacity(0.4)
                    .padding(.leading, 8)
                Spacer()
            }
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical , 8)
            Text("we chaired you through the market place, chaired a commission, He is now chair of the English department, The trajectory of the balloon indicated that the balloon was hovering over")
                .lineSpacing(8.0)
                .opacity(0.6)
                .padding(.vertical , 8)
            
            HStack(alignment: .top){
                
                VStack(alignment: .leading){
                    Text("Size")
                        .fontWeight(.semibold)
                    Text("height: 120 cm")
                        .opacity(0.6)
                    Text("wide: 80 cm")
                        .opacity(0.6)
                    Text("Diameter: 72 cm")
                        .opacity(0.6)
           
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                
                VStack(alignment: .leading){
                    Text("Treatment")
                        .fontWeight(.semibold)
                    Text("we chaired you through the market place, chaired a commission")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
        
            }
            .padding(.vertical)
            
            HStack(alignment: .bottom){
                
                VStack(alignment: .leading){
                    Text("Colors")
                        .fontWeight(.semibold)
                    HStack{
                        ColorsPols(color: .white)
                        ColorsPols(color: .blue)
                        ColorsPols(color: .pink)


                    }
                }
                Spacer()
                
                VStack(alignment: .leading){
                    Text("Quantity")
                        .fontWeight(.semibold)

                    HStack{
                        Button(action: {}) {
                            Image(systemName: "minus")
                                .padding(.all , 8)
                        }
                        .frame(width: 30, height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                        .foregroundColor(Color.black)
                        
                        
                        
                        Text("1")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.horizontal , 8)
                        
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .padding(.all , 8)
                        }
                        .frame(width: 30, height: 30)
                        .background(Color("Primary"))
                        .clipShape(Circle())
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                        .foregroundColor(Color.black)
                    }
                }
            }
        }
        .padding()
        .padding(.top)
        .background(Color("Bg"))
        .cornerRadius(40)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}

struct ColorsPols: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 25 , height: 25)
            .clipShape(Circle())
    }
}
