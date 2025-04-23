//
//  Page4ReserveFailedUIView.swift
//  ABG coffee
//
//  Created by  Belum on 2021/8/17.
//

import SwiftUI

struct Page4ReserveFailedUIView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    @State var top  = UIApplication.shared.windows.first?.safeAreaInsets.top

    
    var body: some View {
        
        ScrollView {

        VStack {
            
            Image("progressbar3-3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 40)
                .padding(.leading,70)
                .padding(.trailing,70)
            
            
            Text("預約失敗")
                .font(.system(size: 20, weight: .regular))
                .padding(.bottom, 30)
                .foregroundColor(.red)

        
        HStack  {

            VStack  {
                Text("您的預約未成功，")
                    .padding(.bottom, 10)
                Text("三秒後將回到預約頁面.....")
                    .padding(.bottom, 10)
                Text("如有任何疑問請來電洽詢")
                    .padding(.bottom, 10)

                Text("0912345678")
                    .padding(.bottom, 10)
                    .foregroundColor(Color("OrderButtonBlue"))



            }

            
        }
        .padding(.trailing, 20)
        .padding(.leading, 20)
        .padding(.bottom, 50)
        .frame(minWidth: 100, minHeight: 20 )
        .font(.system(size: 18, weight: .regular))

        
        }
        }
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


struct Page4ReserveFailedUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page4ReserveFailedUIView()
    }
}
