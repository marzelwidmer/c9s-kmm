//
//  ContactWithDetailView.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//

import SwiftUI

struct ContactWithDetailView: View {
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: DetailView(contact: contact)){
                    ContactView(contact: contact)
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContactWithDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactWithDetailView()
            .padding(.top, 60)
    }
}

struct ContactView: View {
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(60)
            VStack(alignment: .leading){
                Text(contact.name).font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
            }
        }
    }
}
