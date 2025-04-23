//
//  OrderView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/5.
//

import SwiftUI

struct OrderView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    var body: some View {
      
        VStack {
        
            Text("訂餐")
                .font(.system(size: 22))
            VStack {
            
                    NavigationLink ( destination: Order_2View())
                        {Image("自取")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
                NavigationLink ( destination: Order_2View())
                    {Image("外送")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
                }
              Spacer()
             
                
            }
              

                BottomBarMenu()
                    .toolbar(content: {
                                        ToolbarItem(placement: .principal) {
                                            
                                           VStack {
                            Image("ABG")
                                .resizable()
                                .scaledToFit()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          
                            }
                            
                            
                        }
                    })
                 
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                        HStack {
                            Button(action: {}) {
                                Image(systemName: "cart.badge.plus")
                                    .font(.system(size: 25))
                            } .foregroundColor(Color("Dark blue"))
                        })
                      
            
                           
                            .onAppear(perform: {
                                configureBackground()
                            })
                            
                        
                    }
        
       
        
    }






struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

