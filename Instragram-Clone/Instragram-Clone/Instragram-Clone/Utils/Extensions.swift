//
//  Extensions.swift
//  Instragram-Clone
//
//  Created by Punthisa Taengmang on 15/11/21.
//

import SwiftUI
import UIKit
import Kingfisher
extension Image {
    func resizeTo(width: CGFloat,height: CGFloat) -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: width, height: height)
    }
}

extension KFImage {
    func resizeTo(width: CGFloat,height: CGFloat) -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: width, height: height)
    }
}

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil,for: nil)
    }
}
