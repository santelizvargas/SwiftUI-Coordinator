//
//  Coordinator.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

import SwiftUI

protocol Coordinator: ObservableObject {
    associatedtype DestinationView: View
    associatedtype Route
    
    func build(for route: Route) -> DestinationView
    func start()
}
