//
//  ContentView.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//

import SwiftUI
import shared

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    ContactView(contact: contact)
                }
            }
                    .navigationTitle("Contacts")
        }
    }
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
