//
//  CoffeeBeanView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/12.
//

import SwiftUI

struct CoffeeBeanView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    var body: some View {
        NavigationView {
        VStack {
     
       
            HStack{
                VStack{
                    NavigationLink ( destination: HouseBlendView())
                    {Image("coffee bean-1")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("ABG House Blend")
                    Text("$ 450")
          }
                VStack{
                    NavigationLink ( destination: DripFilterView())
                    {Image("drip filter coffee-1")
                    .resizable()
                    .scaledToFit()
                 
                    .padding()
                    }
                    Text("ABG Drip Filter Coffee")
                    Text("$ 220")
                }
                
            }
          
                
            
              Spacer()
    }
        .navigationBarTitleDisplayMode(.inline)
    
        }
  }
}

struct CoffeeBeanView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeBeanView()
    }
}
