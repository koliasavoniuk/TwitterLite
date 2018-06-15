//
//  UITabBarController+Extensions.swift
//  TwitterLite
//
//  Created by Mykola Savoniuk on 6/15/18.
//  Copyright © 2018 Mykola Savoniuk. All rights reserved.
//

import UIKit

extension UITabBarController {
    func createNavController(viewController: UIViewController, with image: UIImage) -> UINavigationController{
        let vc = viewController
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem.image = image
        
        return navController
    }
}
