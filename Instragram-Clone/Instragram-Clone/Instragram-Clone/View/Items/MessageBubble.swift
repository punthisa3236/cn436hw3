//
//  MessageBubble.swift
//  Instragram-Clone
//
//  Created by Punthisa Taengmang on 5/11/21.
//

import SwiftUI

struct MessageBubble: Shape {
    var ownAccout: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, ownAccout ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 15, height: 15))
        return Path(path.cgPath)
    }
}


