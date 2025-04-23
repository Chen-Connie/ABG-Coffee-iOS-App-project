//
//  PageCancelOrderRecordUIView.swift
//  ABG coffee
//
//  Created by  Belum on 2021/8/12.
//

import SwiftUI

struct PageCancelOrderRecordUIView: View {
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
            // 這裡開始往下
            HStack(spacing: 0) {
                Text("訂餐\n購物車")
                    .foregroundColor(self.index == 0 ? .white : Color(.black).opacity(0.7))
                    .font(.system(size: 18 , weight: .bold))
                    .padding(.vertical,10)
                    .padding(.horizontal,30)
                    .background(Color(.orange).opacity(self.index == 0 ? 1 : 0))
                    .clipShape(Capsule())
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        
                        withAnimation(.default) {
                            self.index = 0
                        }
                        
                    }
                //到這邊
                
                Text("商品\n購物車")
                    .foregroundColor(self.index == 1 ? .white : Color(.black).opacity(0.7))
                    .font(.system(size: 18 , weight: .bold))
                    .padding(.vertical,10)
                    .padding(.horizontal,30)
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
                        .padding(.horizontal,25)
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
            .padding(.top,25)
            TabView(selection: self.$index) {
                
                VStack{
                    
                    VStack {
                        
                        
                        ScrollView {
                            
                            VStack {

                                Image("CartNavR")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 10 )
                                    .padding(.horizontal, 10)
                                Image("progressbar5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 30 )
                                    .padding(.horizontal, 10)
                                VStack {
                                    HStack {
                                        Image("orderCancel")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                    }
                                    VStack {
                                        Text("訂單已取消")
                                            .font(.system(size: 20 , weight: .medium))
                                            .foregroundColor(Color("OrderButtonBlue"))
                                    }
                                    .frame(minWidth: 80, maxWidth: .infinity, minHeight: 40)
                                    .padding(.bottom, 20)
                                }
                                VStack {
                                    HStack {
                                        VStack ( alignment: .leading){
                                            Text("自取購物清單")
                                                .font(.system(size: 20, weight: .medium))
                                                .padding(.bottom, 20 )
                                            Text("編號:20210804001")
                                                .font(.system(size: 16, weight: .medium ))
                                            Text("預計取餐時間 19:50")
                                                .font(.system(size: 16, weight: .medium ))
                                        }
                                        .padding(10)
                                        .frame(minWidth: 80, minHeight: 105)
                                        VStack ( alignment: .trailing) {
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
                                                .font(.system(size: 20, weight: .medium))
                                                .padding(.bottom, 20 )
                                            Text("編號:20210804001")
                                                .font(.system(size: 16, weight: .medium ))
                                            Text("預計取餐時間 19:50")
                                                .font(.system(size: 16, weight: .medium ))
                                        }
                                        .padding(10)
                                        .frame(minWidth: 80, minHeight: 105)
                                        VStack ( alignment: .trailing) {
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
                                        .padding( 10)
                                        .frame(minWidth: 85,maxWidth: .infinity, minHeight: 105)
                                    }
                                    .background(Color("ABGGray"))
                                    .frame(minWidth: 0 ,maxWidth: .infinity, minHeight: 105)
                                    .cornerRadius(6)
                                    .padding(.horizontal, 10)
                                    .padding(.bottom, 10 )
                                }
                            }
                            .padding(10)

                            
                        }
                        
                    }
                }.tag(0)
                
                VStack{
                    
                    
                    
                }
                .tag(1)
                
                VStack {
                    
                    
                    
                    
                    
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
                        VStack {
                            Text("外送購物清單       ")
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
                        VStack {
                            Text("外送購物清單       ")
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
                        VStack {
                            Text("外送購物清單       ")
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
                        VStack {
                            Text("外送購物清單       ")
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


struct PageCancelOrderRecordUIView_Previews: PreviewProvider {
    static var previews: some View {
        PageCancelOrderRecordUIView()
    }
}
