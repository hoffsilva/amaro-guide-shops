//
//  SceneDelegate.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 19/12/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinador: Coordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        configureWindow(windowScene)
        configureAppCoordinator()
    }
    
    private func configureWindow(_ windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        self.window?.makeKeyAndVisible()
    }
    
    private func configureAppCoordinator() {
        guard let window = self.window else {
            return
        }
        self.appCoordinador = AppCoordinator(window)
        appCoordinador?.start()
    }

}

