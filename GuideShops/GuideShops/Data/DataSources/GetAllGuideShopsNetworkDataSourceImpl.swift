//
//  GetAllGuideShopsNetworkDataSourceImpl.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Combine
import Resolver
import Moya

class GetAllGuideShopsNetworkDataSourceImpl: GetAllGuideShopsNetworkDataSource {
    
    @Injected var getAllGuideShopsProvider: MoyaProvider<GetAllGuideShopsProvider>
    
    func getAllGuideShops() -> Future<[GuideShopsListViewCellData], Error> {
        
        Future { promise in
            
            self.getAllGuideShopsProvider.request(.getAllGuideShops) { response in
                
                guard let moyaResponse = try? response.get() else {
                    promise(.failure(response.mapError({ $0 }) as! Error))
                    return
                }
                
                if moyaResponse.statusCode == 200 {
                    
                    do {
                        let characterResult = try moyaResponse.map(CharacterResult.self)
                        let listOfGuideShopsCellData = characterResult.results.map { character in
                            GuideShopsListViewCellData(
                                title: character.name,
                                imageUrl: character.image
                            )
                        }
                        
                        promise(.success(listOfGuideShopsCellData))
                    } catch let error {
                        promise(.failure(error))
                    }
                    
                }
                
            }
            
        }
        
    }
    
}
