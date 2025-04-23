//
//  BannerView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/5.
//

import SwiftUI

struct BannerView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    var body: some View {
        
        VStack {
     
        
                
            VStack{
                Image("Banner-2")
                    .resizable()
                    .scaledToFit()
            }
                HStack {
                   
                    VStack{
                        Text("會員")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                        Text("優惠")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            
                    }
                   
                    .padding(20)
                    .background(Color.blue)
                    .cornerRadius(10)
                    VStack{
                        NavigationLink ( destination: Banner_2View())
                        { Text("消費時出示會員卡即可享9折      ")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                        }
                            Text("2021/07/09                                      ")
                                .font(.system(size: 20))
                        
                }
                    .padding()
                }
             
                HStack {
                    VStack{
                        Text("  ")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .font(.system(size: 7))
                        Text("優惠")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        Text("  ")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .font(.system(size: 7))
                        
                    }
                   
                    .padding(20)
                    .background(Color.green)
                    .cornerRadius(10)
                    VStack{
                        NavigationLink ( destination: Banner_2View())
                        {Text("三級警戒期間外帶自取全面八折")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        }
                            Text("2021/07/09                                      ")
                                .font(.system(size: 20))
                }
                    .padding()
            }
              
                HStack {
                   
                    VStack{
                        Text("  ")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .font(.system(size: 7))
                        Text("活動")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        Text("  ")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .font(.system(size: 7))
                    }
                    
                   
                    .padding(20)
                    .background(Color.orange)
                    .cornerRadius(10)
                    VStack{
                    Text("全站商品滿900元即可享免運    ")
                        .font(.system(size: 20))
                        Text("2021/07/09                                      ")
                           
                            
                            .font(.system(size: 20))
                    
                    }
                    .padding()
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



struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}





