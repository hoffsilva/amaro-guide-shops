//
//  Repositories+Injection.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Resolver

extension Resolver {
    
    public static func registerRepositories() {
        register {
            GetAllGuideShopsRepositoryImpl()
        }.implements(GetAllGuideShopsRepository.self)
    }
    
}
