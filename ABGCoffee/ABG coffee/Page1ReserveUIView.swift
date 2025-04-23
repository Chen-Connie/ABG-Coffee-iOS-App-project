//
//  Page1ReserveUIView.swift
//  ABG coffee
//
//  Created by  Belum on 2021/8/16.
//

import SwiftUI

struct Page1ReserveUIView: View {
    @State private var reserveDate = " "
    @State private var CanReserveNumOfPeople = " "
    @State private var reserveNumOfPeople = " "
    @State private var reserveTime = Date()
    @State private var selection = 1
    @State private var selection2 = "一位"
    @State var top  = UIApplication.shared.windows.first?.safeAreaInsets.top
    func configureBackground() {
            let barAppearance = UINavigationBarAppearance()
            barAppearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = barAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        }
    let numOfPeople = ["一位", "兩位", "三位", "四位", "五位", "六位" ]
    
    
    var body: some View {
        
        
        

        VStack {
            
            VStack {
                Image("progressbar3-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 20)
                    .padding(.leading,70)
                    .padding(.trailing,70)
                
                Text("預約服務")
                    .font(.system(size: 20 , weight: .medium))
                
                HStack {
                    DatePicker("預約時間", selection: $reserveTime, displayedComponents: .date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .accentColor(.orange)
                }
                .padding(.leading,25)
                .padding(.trailing,25)
                
                VStack (alignment: .leading)  {
                    
                    HStack {
                        DatePicker("預約時間" , selection: $reserveTime, displayedComponents: .hourAndMinute)
                            .foregroundColor(Color("OrderButtonBlue"))
                            .font(.system(size: 18 , weight: .medium))
                            .padding(.trailing, 60)
                    }
                    
                    HStack  {
                        VStack {
                            Text("可預約人數")
                        }
                        .font(.system(size: 18 , weight: .medium))
                        .foregroundColor(Color("OrderButtonBlue"))
                        VStack (alignment: .center) {
                            Text ("30人")
                        }
                        .padding(.leading,80)
                    }
                    HStack {
                        VStack {
                            Text("預約人數")
                        }
                        .font(.system(size: 18 , weight: .medium))
                        .foregroundColor(Color("OrderButtonBlue"))
                        .padding(.trailing,15)
                        
                        VStack {
                            Picker("\(selection2)", selection: $selection2) {
                                ForEach(numOfPeople, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                        }
                        .padding(.init(top: 0, leading: 85, bottom: 0, trailing: 0))
                    }
                    
                }
                .padding(.leading,55)
                .padding(.trailing,30)
                .padding(.bottom,40)
                
                
                
                
                NavigationLink(destination: Page2ReserveDataUIView()) {
                    Text("填寫預約資料")
                        .frame(maxWidth: 210, minHeight: 30)
                        .font(.system(size: 16, weight: .regular))
                        .background(Color("OrderButtonBlue"))
                        .foregroundColor(.white)
                        .cornerRadius(6)
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
            .padding(.top, 30)
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
}



struct Page1ReserveUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page1ReserveUIView()
    }
}



