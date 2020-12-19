//
//  AppCoordinator.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 19/12/20.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    private let window: UIWindow
    private let navigationController: UINavigationController
    
    init(_ window: UIWindow,
         _ navigationController: UINavigationController) {
        self.window = window
        self.navigationController = navigationController
    }
    
    func start() {
        self.window.rootViewController = navigationController
        self.navigationController.viewControllers = [ViewController()]
    }
    
}
