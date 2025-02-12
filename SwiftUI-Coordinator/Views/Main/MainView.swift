//
//  MainView.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    
    var body: some View {
        NavigationStack(path: $appCoordinator.navigationPath) {
            appCoordinator.build(for: .home)
                .navigationDestination(for: AppTransition.self) { route in
                    appCoordinator.build(for: route)
                }
        }
    }
}
