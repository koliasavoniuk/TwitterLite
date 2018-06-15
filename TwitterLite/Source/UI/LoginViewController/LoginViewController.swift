//
//  LoginViewController.swift
//  TwitterLite
//
//  Created by Mykola Savoniuk on 6/15/18.
//  Copyright © 2018 Mykola Savoniuk. All rights reserved.
//

import UIKit
import TwitterKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.createTwitterLoginButton()
    }

    // MARK: - Private

    private func createTwitterLoginButton() {
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                self.present(MainTabBarViewController(), animated: true, completion: nil)
            } else {
                print("error: \(String(describing: error?.localizedDescription))");
            }
        })
        
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }
}
