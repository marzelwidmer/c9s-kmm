import Foundation

import SwiftUI


// Model
struct ToDoListItem : Identifiable{
    var id = UUID()
    var action: String
}

// ViewModels
class ToDoList: ObservableObject {
    // Mock Data
    @Published var items : [ToDoListItem] = []
}



// Views
struct SwiftUIMVVMContentView : View {
    @ObservedObject var viewModel : ToDoList = ToDoList()
    
    var body: some View{
        NavigationView {
            VStack {
                List(viewModel.items) { item in
                    Text(item.action)
                }
            }.navigationTitle("To Do List")
            .navigationBarItems(trailing:Button(action: {
                // Update viewModel on Refresh
                self.viewModel.items = [
                    ToDoListItem(action: "Get Milk"),
                    ToDoListItem(action: "Get some Drinks"),
                    ToDoListItem(action: "Go Running"),
                    ToDoListItem(action: "Do Work"),
                    ToDoListItem(action: "Learning SwiftUI")
                ]
                
            }, label: {
                Text("Refresh")
            }))
        }
    }
}



struct SwiftUIMVVMContentView_Preview : PreviewProvider {
    static var previews: some View {
        SwiftUIMVVMContentView()
    }
}
