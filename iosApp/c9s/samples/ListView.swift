//
//  ListView.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//

import Foundation

import SwiftUI



struct ListView: View {

    
    var body: some View {

      
        NavigationView {
            List {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("Menu")
        }
        
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
