//
//  AppTransition.swift
//  SwiftUI-Coordinator
//
//  Created by Steven Santeliz on 11/2/25.
//

enum AppTransition: Identifiable {
    case home, detail, other
    
    var id: String {
        String(describing: self)
    }
}
