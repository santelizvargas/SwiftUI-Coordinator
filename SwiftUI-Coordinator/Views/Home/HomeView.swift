//
//  HomeView.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    
    var body: some View {
        VStack {
            Button("Go to detail view") {
                appCoordinator.navigate(to: .detail)
            }
            .buttonStyle(.bordered)
            
            Button("Present popover view") {
                appCoordinator.present(.detail)
            }
            .buttonStyle(.bordered)
        }
    }
}
