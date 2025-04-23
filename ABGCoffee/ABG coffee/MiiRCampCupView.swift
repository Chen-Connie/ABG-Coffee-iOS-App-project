//
//  MiiRCampCupView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/10.
//

import SwiftUI

struct MiiRCampCupView: View {
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
                    Image("mer-4")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                   
                  
                HStack {
                    Text("MiiR Camp Cup")
                        .padding()
                        .font(.system(size: 22))
                   Spacer()
                    Text("$880")
                        .padding()
                        .font(.system(size: 20))
                        .foregroundColor(Color("Dark blue"))
            
                }
                
                
                    HStack {
                        Text("商品規格")
                            .padding()
                            .font(.system(size: 22))
                        Text("                                                 Stainless steel (cup) / Copolyester (lid)")
                            .lineSpacing(3)
                            .padding(1)
                    .font(.system(size: 22))
        .foregroundColor(Color("Light blue"))
          
                       Spacer()
                       
                           
                            
                        
                    }
                    HStack {
                        Text("商品尺寸")
                            .padding()
                            .font(.system(size: 22))
                        Text(" 12 oz (360ml)      ")
                            .lineSpacing(3)
                            .padding(1)
                    .font(.system(size: 22))
        .foregroundColor(Color("Light blue"))
          
                       Spacer()
                       
                           
                            
                        
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
                                    .frame(width:350 , height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)                      )
                        .keyboardType(.asciiCapable)
                        .padding(20)
                 
                }
                    VStack {
                        Spacer(minLength: 50)
                        
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
struct MiiRCampCupView_Previews: PreviewProvider {
    static var previews: some View {
        MiiRCampCupView()
    }
}
