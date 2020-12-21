//
//  GetAllGuideShops.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Combine

protocol GetAllGuideShops {
    func getAllGuideShops() -> Future<[GuideShopsListViewCellData], Error>
}
