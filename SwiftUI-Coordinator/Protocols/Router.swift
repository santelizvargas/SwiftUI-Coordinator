//
//  Router.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

protocol Router {
    associatedtype Route
    
    var navigationPath: NavigationPath { get set }
    func navigate(to route: Route)
    func pop()
    func popToLast()
}

protocol AppRouter: Router where Route == AppTransition { }
