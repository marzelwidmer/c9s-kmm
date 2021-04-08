
import SwiftUI
import shared

struct FooContentView: View {
    
    @StateObject var viewModel = FooViewModel(repository: CovidRepository())

    var body: some View {
        FooListView(viewModel: viewModel)
    }
}
