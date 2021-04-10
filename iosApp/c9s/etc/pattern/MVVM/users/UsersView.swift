//
//  UsersView.swift
//  c9s
//
//  Created by morpheus on 10.04.21.
//

import SwiftUI

struct UsersView: View {
    
    @StateObject var viewModel : ViewModel
    init(viewModel: ViewModel = .init()) { 
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        List(viewModel.users) { user in
            Text(user.name)
        }.onAppear(perform: { // load data on appears = on loadind the view
            viewModel.getUsers()
        })
    }
}

// ViewModel for this UserView
// If therer a View who have sate there will be a property who is called ViewModel
// UsersView.ViewModel
extension UsersView {
    class ViewModel: ObservableObject {
        @Published var users = [User]()
        
        // Instance of dataservice
        let dataService: DataService
        
        init(dataService: DataService = AppDataService()) { // Default is AppDataService
            self.dataService = dataService
        }
        
        func getUsers() {
            // Network Request get users from backend
            dataService.getUsers { [weak self] users in
                self?.users = users
            }
        }
    }
}


struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(id: 0, name: "Dummy")
        let viewModel = UsersView.ViewModel()
        viewModel.users = [user]
        
        return UsersView(viewModel: viewModel)
    }
}
