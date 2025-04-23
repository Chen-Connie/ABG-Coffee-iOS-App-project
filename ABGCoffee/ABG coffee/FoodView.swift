//
//  FoodView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/12.
//

import SwiftUI

struct FoodView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    var body: some View {
        NavigationView {
        VStack {
            ScrollView {
             
       
            HStack{
                VStack{
                    NavigationLink ( destination: CroissantView())
                    {Image("croissant")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("可頌")
                    Text("$ 200")
          }
                VStack{
                    NavigationLink ( destination: ToastView())
                    {Image("toast")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("鹹奶油厚片")
                    Text("$ 90")
                }
                
            }
              Spacer()
            }
    }
        .navigationBarTitleDisplayMode(.inline)
        }
  }
        
}


struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
