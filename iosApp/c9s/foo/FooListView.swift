//
//  FooListView.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//
import SwiftUI
import Combine
import shared

struct FooListView: View {
    
    @ObservedObject var viewModel: FooViewModel
    
    var body: some View {
        
        NavigationView {
            List(viewModel.countyList, id: \.name) { country in
                NavigationLink(destination: FooView(country: country)) {
                    FooView(country: country)
                }
            }
            .navigationBarTitle(Text("List"))
            .onAppear {
                viewModel.fetchAll()
            }
        }
    }
}


struct FooView: View {
    var country: Country
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(country.name).font(.system(size: 21, weight: .medium, design: .default))
                
            }
        }
    }
}
