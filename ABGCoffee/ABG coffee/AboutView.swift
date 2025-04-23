//
//  AboutView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/6.
//

import SwiftUI

struct AboutView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    var body: some View {
        
            VStack {
         
            
                ScrollView {
                    Image("About")
                        .resizable()
                        .frame(width: 350, height: 200)
                      
                    VStack {
                        Text("2020年二月份，於台北市信義區一個寧靜的巷弄，創立了ABG Coffee。我們將街角的老屋翻修，讓經過無數歲月的平房建築穿越時光，重新賦予新的生命。Always been good生命中的一分一秒，儘管稍縱即逝，把握每一個平常的日子，就能夠一直享受美好的生活，我們想要給這座城市一點放鬆的空間，在急促的生活步調中，注入更多慵懶的氣息。我們想要每一位前來的顧客，都可以自在自適地感受，讓咖啡走進日常生活的一部份，想放鬆時有我們的老屋，需要打起精神時，有一杯 ABG的咖啡陪伴。")
                            .lineSpacing(3)
                            .padding(35)
                            .font(.system(size: 20))
                        Text("▎TAIPEI台北市信義區信安街103巷22號       ")
                           
                       
                          
                         
                        Spacer()
                        Text("Tel : 02 2732 5009                                    ")
                            .padding(1)
                        Text("▎TAICHUNG台中市南屯區公益路二段705號")
                            
                        Text("Tel : 04 2380 3153                                    ")
                            .padding(1)
                        Text("Opening hours: Every day 9am - 6pm    ")
                    }
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




struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
