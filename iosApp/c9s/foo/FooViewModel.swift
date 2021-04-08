import Combine
import shared

class FooViewModel: ObservableObject {
    
    @Published var countyList = [Country]()
    
    
    private let repository: CovidRepository
    
    init(repository: CovidRepository) {
        self.repository = repository
    }
    
    func fetchAll() {
        repository.fetchAll(){ data, error in
            if let countyList = data {
                self.countyList = countyList
            }
        }
    }
    
    
}
