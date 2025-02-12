//
//  SwiftUI_CoordinatorApp.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

@main
struct SwiftUI_CoordinatorApp: App {
    @StateObject private var appCoordinator: AppCoordinator = .init()
    
    var body: some Scene {
        WindowGroup {
            EntryView()
                .environmentObject(appCoordinator)
        }
    }
}
