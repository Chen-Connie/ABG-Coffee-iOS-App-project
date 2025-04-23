//
//  ContentView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/7/30.
//

import SwiftUI

struct ContentView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    @State var index = 0
    var body: some View {
       
        NavigationView {
        
            VStack {
             
      
                ScrollView {
                    VStack{
                    TabView (selection: self.$index){
                        ForEach(1...2,id:\.self){index in
                            NavigationLink ( destination: BannerView())
                            {Image("a\(index)")
                                .resizable()
                                .frame(height: self.index == index ?  230 : 180)
                                .cornerRadius(15)
                                .padding(.horizontal)
                                .tag(index)
                            }
                        }
                        
                    }
                    .frame(height:230)
                    .padding(.top)
                    .tabViewStyle(PageTabViewStyle())
                    .animation(.easeOut)
                    }
                    .padding(.vertical)
                    VStack{
                        HStack{
                            Text("美味餐點")
                                .font(.system( size: 26))
                                .fontWeight(.bold)
                                .padding()
                            Spacer()
                            NavigationLink ( destination: OrderView())
                            { Text("來去訂餐")
                            .padding()
                            .border(Color.yellow, width: 3)
                            .foregroundColor(.yellow)
                            .font(.system( size: 16))
                            .cornerRadius(8)
                            }
                            NavigationLink ( destination: Order_2View())
                            {Text("立即預約")
                            
                            .padding()
                            .border(Color.yellow, width: 3)
                            .foregroundColor(.yellow)
                            .font(.system( size: 16))
                            .cornerRadius(8)
                            .padding()
                          }
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        VStack{
                            NavigationLink ( destination: LatteView())
                            {Image("coffee-1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("經典拿鐵")
                            Text("$ 120")
                        }
                        VStack{
                            NavigationLink ( destination: LemoncoffeeView())
                            {Image("coffee-2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("檸檬氣泡咖啡")
                            Text("$ 160")
                        }
                        VStack{
                            NavigationLink ( destination: MocaView())
                            {Image("coffee-3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("摩卡咖啡")
                            Text("$ 200")
                        }
                        
                        VStack{
                            NavigationLink ( destination: Order_3View())
                            {Image("lemon tart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("法式檸檬塔")
                            Text("$ 150")
                        }
                        
                        VStack{
                            NavigationLink ( destination: ToastView())
                            {Image("toast")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("鹹奶油厚片")
                            Text("$ 90")
                        }
                    }
                    }
                    VStack{
                        HStack{
                            Text("商店好物")
                                .font(.system( size: 26))
                                .fontWeight(.bold)
                                .padding()
                            
                            Spacer()
                            NavigationLink ( destination: merchandise_1View())
                            { Text("來去購物")
                            .padding()
                            .border(Color.yellow, width: 3)
                            .foregroundColor(.yellow)
                            .font(.system( size: 16))
                            .cornerRadius(8)
                            
                            .padding()
                        }
                    }
                }
            ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        VStack{
                            NavigationLink ( destination: CanvasBagView())
                            {Image("merchandise-1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("ABG Canvas Bag")
                            Text("$ 150")
                        }
                        VStack{
                            NavigationLink ( destination: MiiRCampCupView())
                            {Image("merchandise-2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("MiiR Camp Cup")
                            Text("$ 1080")
                        }
                        VStack{
                            NavigationLink ( destination: merchandise_2View())
                            {Image("merchandise-3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("MiiR Tumbler")
                            Text("$ 880")
                        }
                        
                        VStack{
                            NavigationLink ( destination: MugView())
                            {Image("merchandise-4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                            }
                            Text("ABG Mug")
                            Text("$ 450")
                        }
                    }
 
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
            .navigationBarItems(leading:
                        HStack {
                            Button(action: {}) {
                             Image(systemName: "house")
                                    .font(.system(size: 25))
                          
                            }
                            
                            .foregroundColor(Color("Dark blue"))
                            
                        }, trailing:
                        HStack {
                            NavigationLink ( destination: Page1OrderCartUIView())
{
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

            
                

struct BottomBarMenu: View {
    var body: some View {
        
        HStack {
            NavigationLink ( destination: OrderView())
            {Image(systemName: "square.and.pencil")
                .foregroundColor(Color("Dark blue"))
                .font(.system(size: 32))
            }
            Spacer()
            NavigationLink ( destination: Page1ReserveUIView())
            {
            Image(systemName: "calendar.badge.clock")
                .foregroundColor(Color("Dark blue"))
                .font(.system(size: 35))
            }
            Spacer()
                NavigationLink ( destination: merchandise_1View())
            {Image(systemName: "bag.badge.plus")
                .foregroundColor(Color("Dark blue"))
                .font(.system(size: 32))
            }
            Spacer()
            Image(systemName: "person.circle")
                .foregroundColor(Color("Dark blue"))
                .font(.system(size: 35))
            Spacer()
            NavigationLink ( destination: AboutView())
            {Image(systemName:"info.circle")
                .foregroundColor(Color("Dark blue"))
                .font(.system(size: 35))
            }
        }
        .padding()
    }
                
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


