//
//  merchandise-2View.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/6.
//

import SwiftUI

struct merchandise_2View: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    @State var count = 0
    @State private var note = ""
    var body: some View {
        VStack {
     
      
            ScrollView {
                Image("mer-2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
               
              
            HStack {
                Text("MiiR Tumbler")
                    .padding()
                    .font(.system(size: 22))
               Spacer()
                Text("$880")
                    .padding()
                    .font(.system(size: 20))
                    .foregroundColor(Color("Dark blue"))
        
            }
            
            
                HStack{
            
                VStack {
                Text("從內部設計時就遵循永不過時、設想周到的理念，此外，ABG Coffee 與 MiiR共同支持水資源計畫，每個杯子底部刻有 Give Code，每賣出一個隨行杯，將其收入的 3%分配給貧困地區的水資源計畫，透過實際行動為地球環境盡一份心力。")
                
                    .lineSpacing(3)
                    .padding(10)
                    .font(.system(size: 22))
                    .foregroundColor(Color("Light blue"))
                   
                    
               
                
                
            }
                    
                    
                    
                }
                HStack {
                    Text("商品數量")
                        .padding()
                        .font(.system(size: 22))
                   Spacer()
                    Button(action:{
                        if self.count != 0 {
                           self.count -= 1
                        }
                    }){
                        HStack {
                      
                            
                        Image(systemName: "minus.circle")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .background(Color("Dark blue"))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 10)
                    }
                    }
                    HStack {
                        Text("\(self.count)")
                            .padding()
                            .foregroundColor(Color("Dark blue"))
                            .padding()
                            .background(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    
                    Button(action:{
                           self.count += 1
                      
                    }){
                        HStack {
                        Image(systemName: "plus.circle")
                           
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .background(Color("Dark blue"))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 10)
                    }
                   
                    }
                }
            HStack {
                Text("備註")
                    
               
                    .padding()
                    .font(.system(size: 22))
                Spacer()
               
          
            }
                
            HStack {
                Spacer()
                   TextEditor(text: $note)
                    .overlay(RoundedRectangle(cornerRadius: 2)
                    .stroke(Color.gray, lineWidth: 2)
                                          )
                    .keyboardType(.asciiCapable)
                    .padding(20)
                Spacer()
            }
            Button(action: {print("Add to cart!")})
            {
                HStack {
                Text("加入購物車")
                    .fontWeight(.semibold)
                    .font(.system(size: 22))
            }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ )
                .padding(10)
                .foregroundColor(.white)
                .background(Color("Dark blue"))
                .cornerRadius(6)
                .padding(.horizontal, 50)
                
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
struct merchandise_2View_Previews: PreviewProvider {
    static var previews: some View {
        merchandise_2View()
    }
}
