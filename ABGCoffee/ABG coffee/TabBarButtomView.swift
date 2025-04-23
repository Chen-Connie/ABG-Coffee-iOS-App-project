//
//  TabBarButtomView.swift
//  ABG coffee
//
//  Created by Dick Chen on 2021/8/18.
//

import SwiftUI

struct TabBarButtomView: View {
    @Binding var current : String
    var image : String
    var animation : Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation{current = image}
        }) {
            VStack(spacing:5){
            Image(systemName: image)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(current == image ? Color("fb") :Color.black.opacity(0.3) )
                .frame(height:35)
            ZStack{
                Rectangle()
                    .fill(Color.yellow)
                    .frame(height:4)
                if current == image {
                    Rectangle()
                        .fill(Color("fb"))
                        .frame(height:4)
                        .matchedGeometryEffect(id: "Tab", in:animation)
                }
            }
        }
}
}
}

