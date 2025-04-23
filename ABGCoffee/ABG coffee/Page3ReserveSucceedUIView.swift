//
//  Page3ReserveSucceedUIView.swift
//  ABG coffee
//
//  Created by  Belum on 2021/8/17.
//


/*

 
 */

import SwiftUI

struct Page3ReserveSucceedUIView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
 
    
    

    
    var body: some View {
        
        
        ScrollView {
        VStack {
            
            Image("progressbar3-3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 40)
                .padding(.leading,70)
                .padding(.trailing,70)
            
            
            Text("預約成功")
                .font(.system(size: 20, weight: .regular))
                .padding(.bottom, 20)
                .foregroundColor(Color("LightGreen"))
            
            
            HStack  {
                VStack (alignment: .leading) {
                    Text("預約時間")
                        .padding(.bottom, 10)
                    Text("預約人數")
                        .padding(.bottom, 10)
                    Text("姓名       ")
                        .padding(.bottom, 10)
                    Text("電話            ")
                    
                }
                .foregroundColor(Color("OrderButtonBlue"))
                VStack (alignment: .leading) {
                    Text("2021/06/30")
                        .foregroundColor(Color.red)
                        .padding(.bottom, 10)
                    
                    Text("四人")
                        .padding(.bottom, 10)
                    
                    Text("嚴偉倫")
                        .padding(.bottom, 10)
                    
                    Text("0912345678")
                        .padding(.bottom, 10)
                    
                }
                
                
            }
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .padding(.bottom, 50)
            .frame(minWidth: 100, minHeight: 20 )
            .font(.system(size: 18, weight: .regular))
            
            
        }
        }
        .padding(.top, 30)
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)

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
struct Page3ReserveSucceedUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page3ReserveSucceedUIView()
    }
}
