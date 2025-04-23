//
//  SelfPageCancelOrderRecordUIView.swift
//  ABG coffee
//
//  Created by  Belum on 2021/8/12.
//

import SwiftUI

struct SelfPageCancelOrderRecordUIView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                
                
                VStack {
                    Button(action: {print("Add Store Cart Tapped") }) {
                        
                        Text("訂餐購物車")
                            .frame(minWidth: 70, minHeight: 30)
                            .font(.system(size: 20, weight: .light))
                            .foregroundColor(.black)
                        
                    }
                }
                
                
                
                VStack {
                    Button(action: {print("Add Store Cart Tapped") }) {
                        Text("商品購物車")
                            .frame(minWidth: 70, minHeight: 30)
                            .font(.system(size: 20, weight: .light))
                            .foregroundColor(.black)
                            .padding(.bottom, 0 )
                            .padding(.leading, 15  )
                            .padding(.trailing,15 )
                        
                    }
                    
                }
                VStack {
                    Text("交易紀錄    ")
                        .frame(minWidth: 70, minHeight: 30)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.orange)
                    
                    
                }
            }
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

struct SelfPageCancelOrderRecordUIView_Previews: PreviewProvider {
    static var previews: some View {
        SelfPageCancelOrderRecordUIView()
    }
}
