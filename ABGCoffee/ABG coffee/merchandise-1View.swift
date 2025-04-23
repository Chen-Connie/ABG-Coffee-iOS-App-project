//
//  merchandise-1View.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/6.
//

import SwiftUI


struct merchandise_1View: View {
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
            Text("咖啡豆 濾掛")
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
            
            
            
        Text("馬克杯 器具")
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
                                NavigationLink ( destination: HouseBlendView())
                                {Image("coffee bean-1")
                                .resizable()
                                .scaledToFit()
                                .padding()
                                }
                                Text("ABG House Blend")
                                Text("$ 450")
                      }
                            VStack{
                                NavigationLink ( destination: DripFilterView())
                                {Image("drip filter coffee-1")
                                .resizable()
                                .scaledToFit()
                             
                                .padding()
                                }
                                Text("ABG Drip Filter Coffee")
                                Text("$ 220")
                            }
                            
                        }
                      
                       
                          Spacer()
                        }
             
                }
      }.tag(0)
               
                VStack{
                    HStack{
                        
                        
                        VStack{
                            NavigationLink ( destination: merchandise_2View())
                            {Image("merchandise-3")
                            .resizable()
                            .scaledToFit()
                            .padding()
                            }
                            Text("MiiR Tumbler")
                            Text("$ 880")
                  }
                        
                        VStack{
                            NavigationLink ( destination: MugView())
                            {Image("merchandise-4")
                            .resizable()
                            .scaledToFit()
                            .padding()
                            }
                            Text("ABG Mug")
                            Text("$ 450")
                  }
                    }
                        HStack {
                    VStack{
                        NavigationLink ( destination: MiiRCampCupView())
                        {Image("merchandise-2")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        }
                        Text("MiiR Camp Cup")
                        Text("$ 1080")
              }
                  
                    VStack{
                        NavigationLink ( destination: CanvasBagView())
                        {Image("merchandise-1")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        }
                        Text("ABG Canvas Bag")
                        Text("$ 150")
                    }
                        
                        }
             
                    
                    Spacer()
              
                }.tag(1)
                
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




    
        






struct merchandise_1View_Previews: PreviewProvider {
    static var previews: some View {
        merchandise_1View()
    }
}
