//
//  AppDelegate+Injection.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() {
        registerViews()
        registerViewControllers()
        registerViewModels()
        registerUseCases()
        registerDataSources()
        registerRepositories()
        registerProviders()
    }
    
}
