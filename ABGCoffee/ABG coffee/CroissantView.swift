//
//  CroissantView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/12.
//

import SwiftUI

struct CroissantView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    @State var count = 0
    @State private var note = ""
    @State private var selection2 = "起司雞肉可頌"
        
        let numOfPeople = ["起司雞肉可頌", "起司里肌可頌"]
 
 

    var body: some View {
        VStack {
     
        
            Image("croissant-1")
                .resizable()
                .frame(width: 428, height: 222)
              
            HStack {
                Text("可頌")
                    .padding()
                    .font(.system(size: 22))
               Spacer()
                Text("$200")
                    .padding()
                    .font(.system(size: 20))
                    .foregroundColor(Color("Dark blue"))
        
            }
            
            
            
           
            HStack {
                Text("製作時間")
                    .padding()
                    .font(.system(size: 22))
               Spacer()
                Text("5 分鐘")
                    .padding()
                    .font(.system(size: 20))
                    .foregroundColor(Color("Dark blue"))
            }
            HStack {
              
                    Text("口味                                          ")
                   .font(.system(size: 22))
                     
            
              
                    Picker("\(selection2)", selection: $selection2) {
                        ForEach(numOfPeople, id: \.self) {
                            Text($0)
                            
                            
                        }
                        
                    }
                    .font(.system(size: 22))
                    .pickerStyle(MenuPickerStyle())
                    
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




struct CroissantView_Previews: PreviewProvider {
    static var previews: some View {
        CroissantView()
    }
}
