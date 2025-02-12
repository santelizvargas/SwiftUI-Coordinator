//
//  DetailView.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    
    var body: some View {
        Button("Go to other view") {
            appCoordinator.navigate(to: .other)
        }
        .buttonStyle(.bordered)
    }
}
