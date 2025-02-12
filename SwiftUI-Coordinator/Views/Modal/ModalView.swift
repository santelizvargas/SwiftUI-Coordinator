//
//  ModalView.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

struct ModalView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    
    var body: some View {
        VStack {
            Text("This is a modal view")
            
            Button("Dimiss", role: .destructive) {
                appCoordinator.dismiss()
            }
            .buttonStyle(.bordered)
            .padding()
        }
    }
}
