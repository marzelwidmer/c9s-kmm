//
//  SideMenuView.swift
//  c9s
//
//  Created by morpheus on 18.04.21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        
        if isShowing {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    SideMenuHeaderView(isShowing: $isShowing)
                        .foregroundColor(.white)
                        .frame(height: 240)
                    
                    // Cell itmens
                    ForEach(SideMenuViewModel.allCases, id: \.self) {  viewModel in
                        
                        NavigationLink(
                            destination: Text(viewModel.title),
                            label: {
                                SideMenuOptionView(viewModle: viewModel)
                                    .foregroundColor(.white)
                            })
                        
                    }
                    
                    Spacer()
                }
            }.navigationBarHidden(true)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
