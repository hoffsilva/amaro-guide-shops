//
//  Providers+Injection.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Resolver
import Moya

extension Resolver {
    
    public static func registerProviders() {
        
        register {
            MoyaProvider<GetAllGuideShopsProvider>()
        }.implements(Moya.TargetType.self)
        
    }
    
}

