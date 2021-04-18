//
//  SideMenuContentView.swift
//  c9s
//
//  Created by morpheus on 18.04.21.
//

import SwiftUI

struct SideMenuContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44: 0 )
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Home")
            }
        }.onAppear {
            isShowing = false
        }
    }
}

struct SideMenuContentView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}
