//
//  AppTransition.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

enum AppTransition: String, Identifiable {
    case home
    case detail
    case other
    case modal

    var id: String { rawValue }
}
