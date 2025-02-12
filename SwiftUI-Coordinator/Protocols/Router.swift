//
//  Router.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

protocol Router {
    associatedtype Route: Identifiable
    
    var navigationPath: NavigationPath { get set }
    var presentedRoute: Route? { get set }
    
    func navigate(to route: Route)
    func pop()
    func popToRoot()
    
    func present(_ route: Route)
    func dismiss()
}

// MARK: - Routes

protocol AppRouter: Router where Route == AppTransition { }
