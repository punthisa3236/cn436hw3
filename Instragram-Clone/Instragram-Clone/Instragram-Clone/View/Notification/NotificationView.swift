//
//  NotificationView.swift
//  Instragram-Clone
//
//  Created by Punthisa Taengmang on 15/11/21.
//

import SwiftUI

struct NotificationView: View {
    @ObservedObject var viewModel = NotificationsViewModel()
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(viewModel.notifications){ notification in
                    NotificationCell(viewModel: NotificationsCellViewModel(notification: notification))
                        .padding(.top)
                }
            }
        }
        
    }
}

