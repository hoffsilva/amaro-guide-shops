//
//  GetAllGuideShopsImpl.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Combine
import Resolver

class GetAllGuideShopsImpl: GetAllGuideShops {
    
    @Injected var getAllGuideShopsRepository: GetAllGuideShopsRepository
    
    func getAllGuideShops() -> Future<[GuideShopsListViewCellData], Error> {
        getAllGuideShopsRepository.getAllGuideShops()
    }
    
}
