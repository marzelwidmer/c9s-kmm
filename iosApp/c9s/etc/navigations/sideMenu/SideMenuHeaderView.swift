//
//  SudeMenuHeaderView.swift
//  c9s
//
//  Created by morpheus on 18.04.21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            closeButton.foregroundColor(.white)
            VStack(alignment: .leading) {
                Image("virus")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 16)

                Text("c3s Monkey")
                    .font(.system(size: 24, weight: .semibold))

                Text("@c3sm")
                    .font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack(spacing: 12) {
                    HStack(spacing: 4){
                        Text("1,254").bold()
                        Text("Following")
                    }
                    HStack(spacing: 4){
                        Text("607").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                Spacer()
            }.padding()
        }
    }
    
    
    var closeButton: some View {
        Button(action: {
            withAnimation(.spring()){
                isShowing.toggle()
            }
        }, label: {
            Image(systemName: "xmark")
                .frame(width: 31, height: 32)
                .padding()
        })
    }
}

struct SudeMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SideMenuHeaderView(isShowing: .constant(true))
            SideMenuHeaderView(isShowing: .constant(true))
                .preferredColorScheme(.dark)
        }
    }
}
