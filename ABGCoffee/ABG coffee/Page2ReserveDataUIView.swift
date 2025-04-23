//
//  Page2ReserveData.swift
//  ABG coffee
//
//  Created by  Belum on 2021/8/17.
//

import SwiftUI


struct Page2ReserveDataUIView: View {
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    @State private var phoneNumber = " "
    @State private var address = " "
    @State private var remark = " "
    @State private var name = ""
    @State private var reservePropose = ""
    @State private var selection3 = "約會"

    let numOfPeople = ["朋友聚會", "家庭聚餐", "商務", "約會" ]
    

    
    var body: some View {
        
        
        ScrollView {
        VStack {
            
            Image("progressbar3-2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 20)
                .padding(.leading,70)
                .padding(.trailing,70)
            
            Text("預約資料")
                .font(.system(size: 20 , weight: .medium))
                .padding(.bottom, 20)
            
            
            VStack (alignment: .leading) {
                
                
                HStack {
                    Text("預約人姓名")
                        .font(.system(size: 18 , weight: .medium))
                        .foregroundColor(Color("OrderButtonBlue"))
                    
                    TextField(" ", text: $name)
                        .frame(minWidth: 255, minHeight: 25)
                        .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
                        .font(.system(size: 18, weight: .medium ))
                        .cornerRadius(6)
                }
                HStack {
                    Text("預約人電話")
                        .font(.system(size: 18 , weight: .medium))
                        .foregroundColor(Color("OrderButtonBlue"))
                    
                    TextField(" ", text: $phoneNumber)
                        .frame(minWidth: 255, minHeight: 25)
                        .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
                        .cornerRadius(6)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("預約目的")
                    }
                    .font(.system(size: 18 , weight: .medium))
                    .foregroundColor(Color("OrderButtonBlue"))
                    
                    VStack {
                        Picker("\(selection3)", selection: $selection3) {
                            ForEach(numOfPeople, id: \.self) {
                                Text($0)
                            }
                            .foregroundColor(Color.red)
                            
                        }

                        .pickerStyle(MenuPickerStyle())
                        
                    }

                    .frame(minWidth: 288, minHeight: 25)
                    .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
                    .cornerRadius(6)
                    .padding(.init(top: 0, leading: 18, bottom: 0, trailing: 0))
                    
                }

                HStack  {
                    VStack {
                        Text("備註")
                            .font(.system(size: 18 , weight: .medium))
                            .foregroundColor(Color("OrderButtonBlue"))
                        
                    }
                    .padding(.bottom,80)
                    .padding(.trailing, 55)
                    VStack {
                        TextField("", text: $remark   )
                            .frame(minWidth: 255, minHeight: 100)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
                            .font(.system(size: 18, weight: .medium ))
                            .cornerRadius(6)
                    }
                }
                
            }
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .padding(.bottom, 20)
            .frame(minWidth: 100, minHeight: 20 )
            
        }
            NavigationLink(destination: Page3ReserveSucceedUIView()) {
             
             Text("確定預約")
                 .frame(maxWidth: 210, minHeight: 30)
                 .font(.system(size: 16, weight: .regular))
                 .background(Color("OrderButtonBlue"))
                 .foregroundColor(.white)
                 .cornerRadius(6)
            
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
                                .frame(width: 100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
                            
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
                 

    }}

struct Page2ReserveDataUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page2ReserveDataUIView()
    }
}
