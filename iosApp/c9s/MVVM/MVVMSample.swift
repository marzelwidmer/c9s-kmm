import SwiftUI

// Models
struct Person {
    var name : String
    var age : Int
    var birthday : Date
}

// ViewModels
class MvvmContetViewModel : ObservableObject {
   @Published private var john = Person(name: "John", age: 32, birthday: Date())
    // Getter
    var name : String {
        john.name
    } 
    var age : String {
        String(john.age)
    }
    var birthday : String {
        // date magic -> age in string
        return "32"
    }
    
    // Intent
    func changeName(_ name: String) {
        john.name = name
    }
}

// Views
struct MvvmContentView : View {
//    let john = Person(name: "John", age: 32, birthday: Date())
    @StateObject var viewModel = MvvmContetViewModel()
    
    var body: some View{
        VStack {
//            Text(john.name)
//            Text(String(john.age))
            Text(viewModel.name)
            Text(String(viewModel.age))
            Button("Change Name") {
                viewModel.changeName("Bob")
            }
        }
    }
}



struct MvvmContentView_Preview : PreviewProvider {
    static var previews: some View {
        MvvmContentView()
    }
}
