//
//  DetailView.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//

import SwiftUI

struct DetailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3 )
            Text(contact.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.medium)
            Form {
                Section {
                    HStack {
                        Text("Phone")
                        Spacer()
                        Text(contact.phone)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text(contact.email)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Address")
                        Spacer()
                        Text(contact.address)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 180)
                    }
                }
                Section {
                    Button (action: {
                        print("Send a message")
                    }, label: {
                        Text("Send a message")
                    })
                    Button (action: {
                        print("Call")
                    }, label: {
                        Text("Call")
                    })
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: contacts[0])
    }
}
