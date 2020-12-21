//
//  GetAllGuideShopsRepositoryMock.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Combine

class GetAllGuideShopsRepositoryMock: GetAllGuideShopsRepository {
    
    private let withSuccess: Bool
    
    init(withSuccess: Bool) {
        self.withSuccess = withSuccess
    }
    
    func getAllGuideShops() -> Future<[GuideShopsListViewCellData], Error> {
        
        Future { promise in
            
            if self.withSuccess {
                let data = [
                    GuideShopsListViewCellData(
                        title: "PÁTIO HIGIENÓPOLIS",
                        imageUrl: "https://cdn.amaro.com/uploads/cms/guide-shop-images_20181112134925.jpg"),
                    GuideShopsListViewCellData(
                        title: "OSCAR FREIRE",
                        imageUrl: "https://res.cloudinary.com/amaromkt/image/upload/v1572536366/GuideShops/retroFit/GROF/20191031-AMARO-guide-shop-thumb_GROF.jpg")
                ]
                promise(.success(data))
            } else {
                promise(.failure(NSError(domain: "", code: 0, userInfo: nil)))
            }
            
        }
        
    }
    
}
