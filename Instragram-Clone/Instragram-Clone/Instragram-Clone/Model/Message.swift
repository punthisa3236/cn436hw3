//
//  Message.swift
//  Instragram-Clone
//
//  Created by Punthisa Taengmang on 5/11/21.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct Message: Decodable, Identifiable, Hashable {
    @DocumentID var id: String?
    let senderID: String
    let receiverID: String
    let message: String
    let timestamp: Timestamp
    let ownerImageURL: String
    
    func timestampText() -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: timestamp.dateValue(), to: Date()) ?? ""
    }
}
