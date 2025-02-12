//
//  AppCoordinator.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

final class AppCoordinator: Coordinator {
    @Published var navigationPath: NavigationPath = .init()
    @Published var presentedRoute: AppTransition?
    
    lazy var associatedView: DestinationView = {
        build(for: .home)
    }()
    
    func start() { }
    
    @ViewBuilder
    func build(for route: AppTransition) -> some View {
        switch route {
            case .home: HomeView()
            case .detail: DetailView()
            case .other: OtherView()
            case .modal: ModalView()
        }
    }
}

// MARK: - App Router

extension AppCoordinator: AppRouter {
    func navigate(to route: AppTransition) {
        navigationPath.append(route)
    }
    
    func pop() {
        guard !navigationPath.isEmpty else { return }
        navigationPath.removeLast()
    }
    
    func popToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }
    
    func present(_ route: AppTransition) {
        presentedRoute = route
    }
    
    func dismiss() {
        presentedRoute = nil
    }
}
