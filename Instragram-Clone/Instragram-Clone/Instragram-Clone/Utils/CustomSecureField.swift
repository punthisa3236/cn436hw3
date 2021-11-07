//
//  CustomSecureField.swift
//  Instragram-Clone
//
//  Created by Punthisa Taengmang on 15/11/21.
//

import SwiftUI

struct CustomSecureField: View {
    let placeholder : Text
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty {
                placeholder
                    .foregroundColor(.black)
                    .padding(.leading,52)
            }
            HStack{
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width:20, height:20)
                    .foregroundColor(.black)
                
                SecureField("",text: $text)
                    .padding(.leading,8)
            }
            .padding(.leading)
        }
        .frame(width: 360, height: 50)
        .background(
            ZStack{
                Color(.init(white:0.9, alpha: 0.7))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.init(white: 0.7, alpha: 0.7)), lineWidth: 1)
                    )
            })
    }
}
