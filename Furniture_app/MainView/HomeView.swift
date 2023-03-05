//
//  HomeView.swift
//  Furniture_app
//
//  Created by Abdelaziz Reda on 04/03/2023.
//

import SwiftUI

struct HomeView: View {
      var body: some View {
        NavigationView{
            HomeScreenView()
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
            Text("Luxury Swedian Chair" .capitalized)
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

struct ButtonNavBarItems: View {
    let image: Image
    let action: ()-> Void
    var body: some View {
        Button(action: {}) {
            image
                .frame(maxWidth: .infinity)
        }
    }
}

struct HomeScreenView: View {
    private let catgoryData:[String] = ["All" , "Soft" , "Chairs", "Lamp", "Kitchen", "Table"]
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
                            ForEach(0..<4){ itemCard in
                                NavigationLink {
                                    MainProudectView()
                                } label: {
                                    ProudectCardView(iamge:Image("chair_\(itemCard + 1)"))
                                        .foregroundColor(Color.black)
                                }

                                
                                
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
            
            // Custom Button tabBar
            
            HStack{
                ButtonNavBarItems(image: Image("Home")){}
                ButtonNavBarItems(image: Image("shopping-cart (1)")){}
                ButtonNavBarItems(image: Image("love (1)")){}
                ButtonNavBarItems(image: Image("User")){}
                
                
            }
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .padding(.horizontal)
            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
            .frame(maxHeight:.infinity , alignment: .bottom )
            
            
        }
    }
}
