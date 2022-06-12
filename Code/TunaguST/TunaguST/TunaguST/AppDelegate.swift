//
//  AppDelegate.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-11-25.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
// MARK: TabBarController
    
    var firstTabNavigationController : UINavigationController!
    var secondTabNavigationControoller : UINavigationController!
    var thirdTabNavigationController : UINavigationController!
    var fourthTabNavigationControoller : UINavigationController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
       
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabBarController = UITabBarController()
        
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBarController.tabBar.layer.shadowRadius = 2
        tabBarController.tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBarController.tabBar.layer.shadowOpacity = 0.3
        
        UITabBar.appearance().tintColor = UIColor(red: 0/255.0, green: 146/255.0, blue: 248/255.0, alpha: 1.0)
        
       firstTabNavigationController = UINavigationController.init(rootViewController: HomeViewController())
       secondTabNavigationControoller = UINavigationController.init(rootViewController: CreateAccountViewController())
       thirdTabNavigationController = UINavigationController.init(rootViewController: LoginViewController())
       fourthTabNavigationControoller = UINavigationController.init(rootViewController: HomeViewController())
        
       tabBarController.viewControllers = [firstTabNavigationController, secondTabNavigationControoller, thirdTabNavigationController, fourthTabNavigationControoller]
        
        let item1 = UITabBarItem( title: "", image: UIImage(systemName:  "house" ), tag: 0)
        let item2 = UITabBarItem( title: "", image:  UIImage(systemName:  "list.bullet" ), tag: 1)
        let item3 = UITabBarItem( title: "", image:  UIImage(systemName:  "message" ), tag: 2)
        let item4 = UITabBarItem( title: "", image:  UIImage(systemName:  "person" ), tag: 3)
    
        firstTabNavigationController.tabBarItem = item1
        secondTabNavigationControoller.tabBarItem = item2
        thirdTabNavigationController.tabBarItem = item3
        fourthTabNavigationControoller.tabBarItem = item4
        
        window?.rootViewController = tabBarController
        
        window?.makeKeyAndVisible()
        
        return true
    }

    
    
    
//    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }
//

}

