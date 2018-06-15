//
//  MainTabBarViewController.swift
//  TwitterLite
//
//  Created by Mykola Savoniuk on 6/15/18.
//  Copyright © 2018 Mykola Savoniuk. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureTabBar()
    }
    
    // MARK: - Private
    
    private func configureTabBar() {
        let feedIcon = UIImage(named: PictureName.feed_icon.rawValue) ?? UIImage()
        let favoriteIcon = UIImage(named: PictureName.favorite_icon.rawValue) ?? UIImage()
        let postIcon = UIImage(named: PictureName.post_icon.rawValue) ?? UIImage()
        
        let feedVC = self.createNavController(viewController: FeedViewController(), with: feedIcon)
        let favoriteVC = self.createNavController(viewController: FavoriteViewController(), with: favoriteIcon)
        let postVC = self.createNavController(viewController:PostViewController(), with: postIcon)
        
        self.viewControllers = [feedVC, postVC, favoriteVC]
        
        self.tabBar.tintColor = UIColor.black
    }
}
