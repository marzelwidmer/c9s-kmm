//
//  SideMenuViewModel.swift
//  c9s
//
//  Created by morpheus on 18.04.21.
//

import Foundation

enum SideMenuViewModel : Int, CaseIterable {
    case profile
    case list
    case bookmarks
    case messages
    case notifications
    case logout
    
    var title: String {
        switch self {
            case .profile: return "Profile"
            case .list: return "List"
            case .bookmarks: return "Bookmarks"
            case .messages: return "Messages"
            case .notifications: return "Notifications"
            case .logout: return "Logout"
        }
    }
    var imageName: String {
        switch self {
            case .profile: return "person"
            case .list: return "list.bullet"
            case .bookmarks: return "bookmark"
            case .messages: return "bubble.left"
            case .notifications: return "bell"
            case .logout: return "arrow.left.square"
        }
    }
}
