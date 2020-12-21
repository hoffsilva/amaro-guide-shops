//
//  GetAllGuideShopsNetworkDataSource.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Combine

protocol GetAllGuideShopsNetworkDataSource {
    func getAllGuideShops() -> Future<[GuideShopsListViewCellData], Error>
}
