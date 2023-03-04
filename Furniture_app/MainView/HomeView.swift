//
//  HomeView.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 04/03/2023.
//

import SwiftUI

struct HomeView: View {
    private let catgoryData:[String] = ["All" , "Soft" , "Chairs", "Chairs", "Chairs", "Chairs", "Chairs"]
    @State var isSelected:Int = 0
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack(alignment:.leading){
                    //topBarItems
                    TopBarItems()
                    
                    
                    //textDataView
                    TitleShow()
                        .padding()
                    
                    //searchView
                    SearchView()
                        .padding(.all )
                    
                    //filterSelction
                    ScrollView(.horizontal , showsIndicators: false){
                        HStack{
                            ForEach(0..<catgoryData.count ) { i in
                                CategoryView(text: catgoryData[i], isActive: i == isSelected)
                                    .onTapGesture {
                                        isSelected = i
                                        
                                    }
                            }
                        }
                    }
                    
                    //populer proudcts
                    Text("Populer")
                        .padding()
                        .font(.custom("PlayfairDisplay-Bold", size: 27))
                    
                    ScrollView(.horizontal , showsIndicators: false){
                        HStack {
                            ForEach(0..<5){ itemCard in
                                ProudectCardView(iamge:Image("chair_\(itemCard + 1)"))
                            }
                        }
                    }
                    
                    Text("Best Sale")
                        .padding()
                        .font(.custom("PlayfairDisplay-Bold", size: 27))
                    
                    ScrollView(.horizontal , showsIndicators: false){
                        HStack {
                            ForEach(0..<5){ itemCard in
                                ProudectCardView(iamge:Image("chair_\(itemCard + 1)"))
                            }
                        }
                    }
                    
                    
                    
                    
                    
                    
                    
                }
            }
            
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct CategoryView: View {

    let text:String
    let isActive: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Text(text)
                .font(.system(size: 20))
                .foregroundColor( isActive ?  Color("Primary") : Color.black.opacity(0.5))
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
            if (isActive){
                Color.black
                    .frame(width: 10, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.leading)
        


    }
}

struct ProudectCardView: View {
    let iamge:Image
    var body: some View {
        VStack(alignment: .leading){
            iamge
                .resizable()
                .frame(width: 210 , height: 200)
                .cornerRadius(20)
            Text("the data for Test" .capitalized)
                .font(.title3)
                .fontWeight(.bold)
            
            HStack( spacing: 2){
                ForEach(0..<5){ stare in
                    Image("star")
                }
                Spacer()
                
                Text("$1500")
                
            }
            
        }
        .frame(width: 210)
        .padding(.all , 15)
        .background(Color.white)
        .cornerRadius(20)
        .padding(.leading)
    }
}
