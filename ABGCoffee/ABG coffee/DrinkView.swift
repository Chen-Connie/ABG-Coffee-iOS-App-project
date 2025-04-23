//
//  DrinkView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/12.
//

import SwiftUI

struct DrinkView: View {
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
                VStack{
                HStack{
         Spacer()
                   
            HStack{
                VStack{
                    NavigationLink ( destination: MilkTeaView())
                    {Image("milk tea")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("ABG 配方奶茶")
                    Text("$ 160")
          }
              
                VStack{
                    NavigationLink ( destination: FlavorMilkView())
                    {Image("flavor milk")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("調味牛奶")
                    Text("$ 120")
                }
                
            }
           
              Spacer()
            }
    }
        .navigationBarTitleDisplayMode(.inline)
        }
  }
        }
    }
}
struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView()
    }
}
