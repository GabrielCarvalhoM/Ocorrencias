//
//  AppDelegate.swift
//  Ocorrencia
//
//  Created by Gabriel Carvalho on 20/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let MyTabBarController = MyTabBarController()
        
        window?.rootViewController = MyTabBarController

        return true
    }




}

