//
//  CoffeeProductView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/12.
//

import SwiftUI

struct CoffeeProductView: View {
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
                    NavigationLink ( destination: LatteView())
                    {Image("coffee-1")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("經典拿鐵")
                    Text("$ 120")
          }
              
                VStack{
                    NavigationLink ( destination: LemoncoffeeView())
                    {Image("coffee-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("檸檬氣泡咖啡")
                    Text("$ 160")
                }
                
            }
            HStack{
                VStack{
                    NavigationLink ( destination: MocaView())
                    {Image("coffee-3")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    }
                    Text("摩卡咖啡")
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

struct CoffeeProductView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeProductView()
    }
}
