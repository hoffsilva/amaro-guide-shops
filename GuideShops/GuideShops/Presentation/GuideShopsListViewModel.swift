//
//  GuideShopsListViewModel.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Combine
import Resolver

class GuideShopsListViewModel {
    
    @Injected var getAllGuideShopsUseCase: GetAllGuideShops
    
    var listOfShops = [GuideShopsListViewCellData]() {
        didSet {
            self.shopsDidLoadWithSuccess = ()
        }
    }
    
    @Published var shopsDidLoadWithSuccess: Void = ()
    @Published var shopsDidLoadWithError: String = ""
    
    var cancellable: AnyCancellable?
    
    func getGuideShops() {
        
        cancellable = getAllGuideShopsUseCase
            .getAllGuideShops()
            .sink { [weak self] error in
                switch error {
                case .failure(let error):
                    self?.shopsDidLoadWithError = error.localizedDescription
                case .finished: break
                }
            } receiveValue: { [weak self] data in
                self?.listOfShops = data
            }
        
    }
    
    
}
