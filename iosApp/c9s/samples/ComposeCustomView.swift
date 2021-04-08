//
//  ComposeCustomView.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//
import Foundation
import SwiftUI

struct Employee {
    var name: String
    var jobTitle: String
    var emailAddress: String
    var profilePicture: String
}

struct ProfilePicture: View {
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct EmailAddress: View {
    var address: String

    var body: some View {
        HStack {
            Image(systemName: "envelope")
            Text(address)
        }
    }
}

struct EmployeeDetails: View {
    var employee: Employee

    var body: some View {
        VStack(alignment: .leading) {
            Text(employee.name)
                .font(.largeTitle)
                .foregroundColor(.primary)
            Text(employee.jobTitle)
                .foregroundColor(.secondary)
            EmailAddress(address: employee.emailAddress)
        }
    }
}

struct EmployeeView: View {
    var employee: Employee

    var body: some View {
        HStack {
            ProfilePicture(imageName: employee.profilePicture)
            EmployeeDetails(employee: employee)
        }
    }
}

struct ComposeCustomView: View {
    let employee = Employee(name: "Paul Hudson", jobTitle: "Editor, Hacking with Swift", emailAddress: "paul@hackingwithswift.com", profilePicture: "paul-hudson")

    var body: some View {
        EmployeeView(employee: employee)
    }
}


struct ComposeCustomView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeCustomView()
    }
}
