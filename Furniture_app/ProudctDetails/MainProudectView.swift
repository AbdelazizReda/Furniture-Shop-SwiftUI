//
//  MainProudectView.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 05/03/2023.
//

import SwiftUI

struct MainProudectView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
            VStack{
                ZStack{
                    Color("Bg")
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarBackButtonHidden(true)
                        .navigationBarItems(leading: Button(action: {presentationMode.wrappedValue.dismiss()}, label: {
                            Image(systemName: "chevron.backward")
                                .padding(.all , 12)
                                .background(Color.white)
                                .cornerRadius(8)
                                .foregroundColor(Color.black)
                        })
                                            
                                            
                                            ,trailing: Image("threeDot")
                        )
                    
                    ScrollView{
                        Image("chair_1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        DescriptionView()
                            .offset(y:-40)
                        
                    }
                    .edgesIgnoringSafeArea(.top)
                    
                    
                    HStack{
                        Text("$1500")
                            .font(.title)
                            .foregroundColor(Color.white)
                        Spacer()
                        Button(action: {}) {
                            Text("add to cart")
                                .padding()
                                .padding(.horizontal)
                                .background(Color.white)
                                .cornerRadius(10)
                                .foregroundColor(Color("Primary"))
                        }
                    }
                    .padding()
                    .background(Color("Primary"))
                    .frame(maxHeight: .infinity , alignment: .bottom)
                    
                }
                .edgesIgnoringSafeArea(.bottom)
                
            }
            
        
    }
}

struct MainProudectView_Previews: PreviewProvider {
    static var previews: some View {
        MainProudectView()
    }
}
