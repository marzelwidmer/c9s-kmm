//
//  SideMenuOptionview.swift
//  c9s
//
//  Created by morpheus on 18.04.21.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModle: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModle.imageName)
                .frame(width:24, height: 24)
            Text(viewModle.title)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        }
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModle: .messages)
    }
}
