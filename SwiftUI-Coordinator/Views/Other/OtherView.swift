//
//  OtherView.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

struct OtherView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    
    var body: some View {
        VStack {
            Button("Pop") {
                appCoordinator.pop()
            }
            .buttonStyle(.bordered)
            
            Button("Pop Last") {
                appCoordinator.popToLast()
            }
            .buttonStyle(.bordered)
        }
    }
}
