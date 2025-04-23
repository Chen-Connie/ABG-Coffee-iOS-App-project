//
//  Order-2View.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/5.
//

import SwiftUI

struct Order_2View: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    @State var top  = UIApplication.shared.windows.first?.safeAreaInsets.top
    @State var index = 0
  
    var body: some View {
       
        VStack {
            
        HStack(spacing: 0) {
            Text("咖啡")
                .foregroundColor(self.index == 0 ? .white : Color(.black).opacity(0.7))
                .fontWeight(.bold)
                .padding(.vertical,10)
                .padding(.horizontal,30)
                .background(Color(.orange).opacity(self.index == 0 ? 1 : 0))
                .clipShape(Capsule())
                .onTapGesture {
                    
                    withAnimation(.default) {
                    self.index = 0
                    }
                    
                }
            
            
            
        Text("飲品")
            .foregroundColor(self.index == 1 ? .white : Color(.black).opacity(0.7))
            .fontWeight(.bold)
            .padding(.vertical,10)
            .padding(.horizontal,30)
            .background(Color(.orange).opacity(self.index == 1 ? 1 : 0))
            .clipShape(Capsule())
            .onTapGesture {
                
                withAnimation(.default) {
                self.index = 1
                }
                
            }
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Text("輕食")
                .foregroundColor(self.index == 2 ? .white : Color(.black).opacity(0.7))
                .fontWeight(.bold)
                .padding(.vertical,10)
                .padding(.horizontal,30)
                .background(Color(.orange).opacity(self.index == 2 ? 1 : 0))
                .clipShape(Capsule())
                .onTapGesture {
                    
                   
                    withAnimation(.default) {
                    self.index = 2
                    }
                    
                }
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    
            Text("甜點")
                .foregroundColor(self.index == 3 ? .white : Color(.black).opacity(0.7))
                .fontWeight(.bold)
                .padding(.vertical,10)
                .padding(.horizontal,30)
                .background(Color(.orange).opacity(self.index == 3 ? 1 : 0))
                .clipShape(Capsule())
                .onTapGesture {
                    
                   
                    withAnimation(.default) {
                    self.index = 3
                    }
                    
            
                  
                }
        }
                        .background(Color.black.opacity(0.06))
                        .clipShape(Capsule())
                        .padding(.horizontal)
                        .padding(.top,25)
            
            TabView(selection: self.$index) {
                   
                VStack{
                    
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
      }.tag(0)
               
                VStack{
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
                }.tag(1)
                VStack{
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
                }.tag(2)
                VStack{
                    HStack{
                    VStack{
                        NavigationLink ( destination: Order_3View())
                        {Image("lemon tart")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        }
                        Text("法式檸檬塔")
                        Text("$ 150")
              }
                  
                    VStack{
                        NavigationLink ( destination: CinnamonView())
                        {Image("cinnamon rolls")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        }
                        Text("糖霜肉桂捲")
                        Text("$ 100")
                    }
                    
                }
                HStack{
                    VStack{
                        NavigationLink ( destination: TiramisuView())
                        {Image("tiramisu-1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 182)
                        .padding()
                        }
                        Text("提拉米蘇")
                        Text("$ 150")
                        
              }
                    Spacer()
                }
                 
                    Spacer()
                }.tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
           
            
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




    
        


struct Order_2View_Previews: PreviewProvider {
    static var previews: some View {
        Order_2View()
    }
}



  
