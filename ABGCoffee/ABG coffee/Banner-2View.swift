//
//  Banner-2View.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/5.
//

import SwiftUI

struct Banner_2View: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    var body: some View {
        
        HStack {
            VStack{
        Text("三級警戒期間 外帶自取全面八折優惠")
            .font(.system(size: 26))
            .padding()
              
                            Image("a1")
                                .resizable()
                                .scaledToFit()
                               
                               
                HStack{
                Text("響應政府防疫，與全民齊心抗疫，防疫期間在家也能享受嘴邊的馨香")
                    .font(.system(size: 20))
                    .padding()
                    
                    Spacer()
                      
                       
                    
                    
                }
              Spacer()
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
        
    }




struct Banner_2View_Previews: PreviewProvider {
    static var previews: some View {
        Banner_2View()
    }
}
