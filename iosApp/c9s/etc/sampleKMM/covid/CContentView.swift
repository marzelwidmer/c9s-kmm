
import SwiftUI
import shared

struct CContentView: View {
    
    @StateObject var viewModel = CViewModel(repository: CovidRepository())

    var body: some View {
        CListView(viewModel: viewModel)
    }
}
