//
//  SelfPage4OrderRecordUIView.swift
//  ABG coffee
//
//  Created by  Belum on 2021/8/12.
//

import SwiftUI

struct SelfPage4OrderRecordUIView: View {
    func configureBackground() {
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = UIColor.white
        UINavigationBar.appearance().standardAppearance = barAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
    }
    @State var top  = UIApplication.shared.windows.first?.safeAreaInsets.top
    @State var index = 0
    @State var showAlert = false
    @State var count1 = 0
    @State var count2 = 0

    
    var body: some View {
        
        VStack {
            HStack(spacing: 0) {
                Text("訂餐購物車")
                    .foregroundColor(self.index == 0 ? .white : Color(.black).opacity(0.7))
                    .font(.system(size: 18 , weight: .bold))
                    .padding(.vertical,20)
                    .padding(.horizontal,20)
                    .background(Color(.orange).opacity(self.index == 0 ? 1 : 0))
                    .clipShape(Capsule())
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        
                        withAnimation(.default) {
                            self.index = 0
                        }
                        
                    }
                //到這邊
                
                Text("商品購物車")
                    .foregroundColor(self.index == 1 ? .white : Color(.black).opacity(0.7))
                    .font(.system(size: 18 , weight: .bold))
                    .padding(.vertical,20)
                    .padding(.horizontal,20)
                    .background(Color(.orange).opacity(self.index == 1 ? 1 : 0))
                    .clipShape(Capsule())
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        
                        withAnimation(.default) {
                            self.index = 1
                        }
                        
                        
                        
                        
                        
                        
                        
                    }
                HStack(spacing: 0) {
                    Text("交易紀錄")
                        .foregroundColor(self.index == 2 ? .white : Color(.black).opacity(0.7))
                        .font(.system(size: 18 , weight: .bold))
                        .padding(.vertical,20)
                        .padding(.horizontal,20)
                        .background(Color(.orange).opacity(self.index == 2 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            
                            withAnimation(.default) {
                                self.index = 2
                            }
                            
                        }
                }
            }
            
            .background(Color.black.opacity(0.06))
            .clipShape(Capsule())
            .padding(.horizontal)
            .padding(.trailing ,17)
            .padding(.top,25)

            TabView(selection: self.$index) {
                
                VStack{
                    
                    VStack {
                        
                        
                        ScrollView {
                            
                            VStack {
                                
                    
                                
                                

                                
                                
                                Image("progressbar4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 10 )
                                    .padding(.horizontal, 10)
                                
                                
                                
                                VStack {
                                
                                HStack {
                                    Image("cooker")
                                        .resizable()
                                        .frame(width: 80,  height: 80)
                                }
                                
                                VStack {
                                    Text("餐點製作中，")
                                        .font(.system(size: 20 , weight: .medium))
                                        .foregroundColor(Color("OrderButtonBlue"))

                                    Text("製作完成將儘速送餐至指定位置")
                                        .font(.system(size: 20 , weight: .medium))
                                        .padding(.bottom, 20 )
                                        .foregroundColor(Color("OrderButtonBlue"))

                                }
                                .padding(10)
                                .frame(minWidth: 100,maxWidth: .infinity, minHeight: 80)
                                
                                }
                                
                                
                                HStack {
                                    VStack ( alignment: .leading){
                                        Text("自取購物清單")
                                            .font(.system(size: 20 , weight: .medium))
                                            .padding(.bottom, 20 )
                                        
                                        Text("編號:20210804001")
                                            .font(.system(size: 16, weight: .medium ))
                                            .padding(.leading, 0)
                                        
                                        Text("預計取餐時間 19:50")
                                            .font(.system(size: 16, weight: .medium ))
                                    }
                                    .padding(10)
                                    .frame(minWidth: 80, minHeight: 105)

                                    VStack ( alignment: .trailing){
                                        Text("2021/07/15(四)16:50")
                                            .font(.system(size: 16, weight: .medium))
                                            .padding(.bottom, 40 )
                                            .foregroundColor(Color("OrderDateColor"))
                                        
                                        Text("     Total: $350")
                                            .font(.system(size: 24, weight: .medium))

                                    }
                                    .padding( 10)
                                    .frame(minWidth: 85,maxWidth: .infinity, minHeight: 105)
                                }
                                .background(Color("ABGGray"))
                                .frame(minWidth: 0 ,maxWidth: .infinity, minHeight: 105)
                                .cornerRadius(6)
                                .padding(.horizontal, 10)
                                .padding(.bottom, 10 )
                                
                                HStack {
                                    VStack ( alignment: .leading){
                                        Text("自取購物清單")
                                            .font(.system(size: 20 , weight: .medium))
                                            .padding(.bottom, 20 )
                                        
                                        Text("編號:20210804001")
                                            .font(.system(size: 16, weight: .medium ))
                                            .padding(.leading, 0)
                                        
                                        Text("預計取餐時間 19:50")
                                            .font(.system(size: 16, weight: .medium ))
                                    }
                                    .padding(10)
                                    .frame(minWidth: 80, minHeight: 105)

                                    VStack ( alignment: .trailing){
                                        Text("2021/07/15(四)16:50")
                                            .font(.system(size: 16, weight: .medium))
                                            .padding(.bottom, 40 )
                                            .foregroundColor(Color("OrderDateColor"))
                                        
                                        Text("     Total: $350")
                                            .font(.system(size: 24, weight: .medium))

                                    }
                                    .padding( 10)
                                    .frame(minWidth: 85,maxWidth: .infinity, minHeight: 105)
                                }
                                .background(Color("ABGGray"))
                                .frame(minWidth: 0 ,maxWidth: .infinity, minHeight: 105)
                                .cornerRadius(6)
                                .padding(.horizontal, 10)
                                .padding(.bottom, 10 )
                                
                            }
                            .padding(10)
                            
                        }
                        
                    }
                }.tag(1)
                
                VStack{
                    ScrollView {
                        
                    
                        VStack {
                            
                            
                            Image("progressbar1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.bottom, 10 )
                                .padding(.horizontal, 10)
                            
                            HStack {
                                VStack ( alignment: .leading){
                                    Text("商店購物清單")
                                        .font(.system(size: 20 , weight: .medium))
                                        .padding(.bottom, 20 )
                                    
                                    Text("編號:20210804001")
                                        .font(.system(size: 16, weight: .medium ))
                                        .padding(.leading, 0)
                                    
                                    Text("      ")
                                        .font(.system(size: 16, weight: .medium ))
                                }
                                .padding(10)
                                .frame(minWidth: 80, minHeight: 105)
                                
                                VStack( alignment: .trailing) {
                                    Text("2021/07/15(四)16:50")
                                        .font(.system(size: 16, weight: .medium))
                                        .padding(.bottom, 40 )
                                        .foregroundColor(Color("OrderDateColor"))
                                    
                                    Text("     Total: $350")
                                        .font(.system(size: 24, weight: .medium))
                                }
                                .padding( 10)
                                .frame(minWidth: 85,maxWidth: .infinity, minHeight: 105)
                            }
                            .background(Color("ABGGray"))
                            .frame(minWidth: 0 ,maxWidth: .infinity, minHeight: 105)
                            .cornerRadius(6)
                            .padding(10)
                            
                            HStack {
                                VStack ( alignment: .leading){
                                    Image("merchandise-3")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 70, alignment: .leading)
                                    Image("merchandise-4")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 70, alignment: .leading)
                                }
                                .padding( 10 )
                                .frame(minWidth: 0 ,maxWidth: .infinity, minHeight: 30)
                                
                                VStack {
                                    
                                    Text("MiiR MuG")
                                        .font(.system(size: 18, weight: .medium))
                                    HStack {
                                        Button(action:{
                                            if self.count1 != 0 {
                                                self.count1 -= 1
                                            }
                                        }){
                                            HStack {
                                                Image(systemName: "minus.circle")
                                                    .font(.system(size: 25))
                                                    .foregroundColor(.white)
                                                    .background(Color("OrderButtonBlue"))
                                                    .clipShape(Circle())
                                            }
                                            
                                            Text("\(self.count1)")
                                                .padding()
                                                .clipShape(Circle())
                                                .font(.system(size: 16, weight: .medium ))
                                                .foregroundColor(Color("OrderButtonBlue"))
                                            
                                        }
                                        
                                        Button(action:{
                                            self.count1 += 1
                                            
                                        }){
                                            HStack {
                                                Image(systemName: "plus.circle")
                                                    
                                                    .font(.system(size: 25))
                                                    .foregroundColor(.white)
                                                    .background(Color("OrderButtonBlue"))
                                                    .clipShape(Circle())
                                            }
                                        }
                                    }
                                    .frame(width: 180, height: 50, alignment: .center)
                                    Text("ABG MuG")
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    HStack {
                                        Button(action:{
                                            if self.count2 != 0 {
                                                self.count2 -= 1
                                            }
                                        }){
                                            HStack {
                                                Image(systemName: "minus.circle")
                                                    .font(.system(size: 25))
                                                    .foregroundColor(.white)
                                                    .background(Color("OrderButtonBlue"))
                                                    .clipShape(Circle())
                                            }
                                            
                                            Text("\(self.count2)")
                                                .padding()
                                                .clipShape(Circle())
                                                .font(.system(size: 16, weight: .medium ))
                                                .foregroundColor(Color("OrderButtonBlue"))
                                            
                                        }
                                        
                                        Button(action:{
                                            self.count2 += 1
                                            
                                        }){
                                            HStack {
                                                Image(systemName: "plus.circle")
                                                    
                                                    .font(.system(size: 25))
                                                    .foregroundColor(.white)
                                                    .background(Color("OrderButtonBlue"))
                                                    .clipShape(Circle())
                                            }
                                        }
                                    }
                                    .frame(width: 180, height: 50, alignment: .center)
                                }
                                .frame(minWidth: 0 ,maxWidth: .infinity, minHeight: 30)
                                
                                VStack( alignment: .trailing) {
                                    Spacer().frame(width: 20, height: 50)
                                    Text("$880")
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    Spacer().frame(width: 20, height: 50)
                                    Text("$900")
                                        .font(.system(size: 18, weight: .medium))
                                    
                                }
                                .frame(minWidth: 0 ,maxWidth: .infinity, minHeight: 30,alignment: .trailing)
                                .padding(10)
                                
                            }
                            .background(Color("ABGlightblue"))
                            .frame(minWidth: 300, maxWidth: .infinity, minHeight: 170)
                            .cornerRadius(6)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 40)
                            HStack {

                                

                             NavigationLink(destination: Page2OrderCartUIView()) {
                              
                              Text("確認訂單；結帳")
                                  .frame(maxWidth: 210, minHeight: 30)
                                  .font(.system(size: 16, weight: .regular))
                                  .background(Color("OrderButtonBlue"))
                                  .foregroundColor(.white)
                                  .cornerRadius(6)
                             }
                         }
                        }
                        .padding(10)

                        
                    }
                    
                    
                    Spacer()
                    
                }
                .tag(0)
                
                VStack {
                    
                    
                    Image("CartNavR")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 10 )
                        .padding(.leading, 20  )
                        .padding(.trailing,20 )
                    
                    HStack {
                        VStack {
                            Button(action: {print("Add Store Cart Tapped") }) {
                            Text("訂餐種類")
                                .frame(minWidth: 70, minHeight: 30)
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(.black)
                        }
                        }
                        .padding(.trailing, 30)
                        
                        VStack {
                                Text("下單時間")
                                    .frame(minWidth: 70, minHeight: 30)
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.black)
                                    .padding(.leading, 30  )
                            
                        }
                    }
                    
                    Image("CartNav2-R")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 10 )
                        .padding(.leading, 20  )
                        .padding(.trailing,20 )
                    
                    HStack {
                        VStack( alignment: .leading) {
                            Text("自取購物清單       ")
                                .font(.system(size: 20 , weight: .medium))
                                .padding(.bottom, 20 )
                            
                            Text("編號:20210804001   ")
                                .font(.system(size: 16, weight: .medium ))
                                .padding(.leading, 0)
                            
                            Text("訂單完成時間 19:50   ")
                                .font(.system(size: 16, weight: .medium ))
                        }
                        .padding(10)
                        .frame(minWidth: 100, minHeight: 105)
                        
                        VStack( alignment: .trailing) {
                            
                            Text("2021/07/15(四)16:50")
                                .font(.system(size: 16, weight: .medium))
                                
                                .foregroundColor(Color("OrderDateColor"))
                            
                            Image("tickiconfalse")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(.leading, 125 )
                            
                            Text("     Total: $350")
                                .font(.system(size: 24, weight: .medium))
                        }
                        .padding(10)
                        .frame(minWidth: 85, minHeight: 105)
                    }
                    
                    .background(Color("ABGGray"))
                    .frame(maxWidth: .infinity, minHeight: 105)
                    .cornerRadius(6)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10 )
                    HStack {
                        VStack ( alignment: .leading) {
                            Text("自取購物清單       ")
                                .font(.system(size: 20 , weight: .medium))
                                .padding(.bottom, 20 )
                            
                            Text("編號:20210804001   ")
                                .font(.system(size: 16, weight: .medium ))
                                .padding(.leading, 0)
                            
                            Text("訂單完成時間 19:50   ")
                                .font(.system(size: 16, weight: .medium ))
                        }
                        .padding(10)
                        .frame(minWidth: 100, minHeight: 105)
                        
                        VStack( alignment: .trailing) {
                            
                            Text("2021/07/15(四)16:50")
                                .font(.system(size: 16, weight: .medium))
                                
                                .foregroundColor(Color("OrderDateColor"))
                            
                            Image("tickicon")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(.leading, 125 )
                            
                            Text("     Total: $350")
                                .font(.system(size: 24, weight: .medium))
                        }
                        .padding(10)
                        .frame(minWidth: 85, minHeight: 105)
                    }
                    .background(Color("ABGGray"))
                    .frame(maxWidth: .infinity, minHeight: 105)
                    .cornerRadius(6)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10 )
                    HStack {
                        VStack ( alignment: .leading) {
                            Text("自取購物清單       ")
                                .font(.system(size: 20 , weight: .medium))
                                .padding(.bottom, 20 )
                            
                            Text("編號:20210804001   ")
                                .font(.system(size: 16, weight: .medium ))
                                .padding(.leading, 0)
                            
                            Text("訂單完成時間 19:50   ")
                                .font(.system(size: 16, weight: .medium ))
                        }
                        .padding(10)
                        .frame(minWidth: 100, minHeight: 105)
                        
                        VStack( alignment: .trailing) {
                            Text("2021/07/15(四)16:50")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(Color("OrderDateColor"))
                            
                            Image("tickicon")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(.leading, 125 )
                            
                            Text("     Total: $350")
                                .font(.system(size: 24, weight: .medium))
                        }
                        .padding(10)
                        .frame(minWidth: 85, minHeight: 105)
                    }
                    
                    .background(Color("ABGGray"))
                    .frame(maxWidth: .infinity, minHeight: 105)
                    .cornerRadius(6)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10 )
                    
                    HStack {
                        VStack ( alignment: .leading) {
                            Text("自取購物清單       ")
                                .font(.system(size: 20 , weight: .medium))
                                .padding(.bottom, 20 )
                            
                            Text("編號:20210804001   ")
                                .font(.system(size: 16, weight: .medium ))
                                .padding(.leading, 0)
                            
                            Text("訂單完成時間 19:50   ")
                                .font(.system(size: 16, weight: .medium ))
                        }
                        .padding(10)
                        .frame(minWidth: 100, minHeight: 105)
                        
                        VStack( alignment: .trailing) {
                            
                            Text("2021/07/15(四)16:50")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(Color("OrderDateColor"))
                            
                            Image("tickicon")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(.leading, 125 )
                            
                            Text("     Total: $350")
                                .font(.system(size: 24, weight: .medium))
                        }
                        .padding(10)
                        .frame(minWidth: 85, minHeight: 105)
                    }
                    .background(Color("ABGGray"))
                    .frame(maxWidth: .infinity, minHeight: 105)
                    .cornerRadius(6)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10 )
                }
                .tag(2)
                
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


struct SelfPage4OrderRecordUIView_Previews: PreviewProvider {
    static var previews: some View {
        SelfPage4OrderRecordUIView()
    }
}
