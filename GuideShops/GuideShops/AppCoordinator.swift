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
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
        self.window.rootViewController = ViewController()
    }
    
}
