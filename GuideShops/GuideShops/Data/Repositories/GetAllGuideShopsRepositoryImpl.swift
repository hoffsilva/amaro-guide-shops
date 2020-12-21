//
//  GetAllGuideShopsRepositoryImpl.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Combine
import Resolver

class GetAllGuideShopsRepositoryImpl: GetAllGuideShopsRepository {

    @Injected var getAllGuideShopsNetworkDataSource: GetAllGuideShopsNetworkDataSource
    @Injected var getAllGuideShopsLocalDataSource: GetAllGuideShopsLocalDataSource
    
    func getAllGuideShops() -> Future<[GuideShopsListViewCellData], Error> {
        getAllGuideShopsNetworkDataSource.getAllGuideShops()
    }
    
}
