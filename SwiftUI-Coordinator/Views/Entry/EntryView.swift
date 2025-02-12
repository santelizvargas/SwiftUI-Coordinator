//
//  EntryView.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

struct EntryView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    
    var body: some View {
        NavigationStack(path: $appCoordinator.navigationPath) {
            appCoordinator.associatedView
                .navigationDestination(
                    for: AppTransition.self,
                    destination: buildView
                )
                .popover(
                    item: $appCoordinator.presentedRoute,
                    content: buildView
                )
        }
    }
    
    private func buildView(for route: AppTransition) -> some View {
        appCoordinator.buildView(for: route)
    }
}
