//
//  GuideShopsListViewModel.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Combine

class GuideShopsListViewModel {
    
    @Published var listOfShops = [GuideShopsListViewCellData]()
    @Published var shopsDidLoad: Void = ()
    
    func getGuideShops() {
        listOfShops = [
            GuideShopsListViewCellData(
                title: "PÁTIO HIGIENÓPOLIS",
                imageUrl: "https://cdn.amaro.com/uploads/cms/guide-shop-images_20181112134925.jpg"),
            GuideShopsListViewCellData(
                title: "OSCAR FREIRE",
                imageUrl: "https://res.cloudinary.com/amaromkt/image/upload/v1572536366/GuideShops/retroFit/GROF/20191031-AMARO-guide-shop-thumb_GROF.jpg")
        ]
        shopsDidLoad = ()
    }
    
    
}
