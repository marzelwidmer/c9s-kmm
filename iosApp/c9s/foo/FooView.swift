//
//  FooListView.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//
import SwiftUI
import Combine
import shared

struct FooView: View {
    val country: Country
 
        var body: some View {
            HStack {
                Image("bernardLaw")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .cornerRadius(60)
                VStack(alignment: .leading){
                    Text(country.name).font(.system(size: 21, weight: .medium, design: .default))
        
                }
            }
}
