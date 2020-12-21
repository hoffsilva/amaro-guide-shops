//
//  GetAllGuideShopsRepository.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Combine

protocol GetAllGuideShopsRepository {
    func getAllGuideShops() -> Future<[GuideShopsListViewCellData], Error>
}
