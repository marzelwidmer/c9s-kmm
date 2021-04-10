//
//  c9sApp.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//

import SwiftUI
import shared

@main
struct c9sApp: App {
    init() {
        KoinKt.doInitKoin()
    }
    var body: some Scene {
        WindowGroup {
            UsersView()
//            CContentView()
//            ContentView()
        }
    }
}
