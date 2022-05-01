//
//  FirstTabBarViewController.swift
//  Navigation
//
//  Created by Ниночка on 23.04.2022.
//

import UIKit

class FirstTabBarViewController: UITabBarController {

    let firstVC = ViewController()
    let secondVC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }

    private func setupControllers() {
        
        let firstNavController = UINavigationController(rootViewController: firstVC)
        firstVC.tabBarItem.title = "Feed"
        firstVC.tabBarItem.image = UIImage(named: "Unknown")
        firstVC.navigationItem.title = "Лента пользователя"
        
        let secondNavController = UINavigationController(rootViewController: secondVC)
        secondVC.tabBarItem.title = "Profile"
        secondVC.tabBarItem.image = UIImage(named: "картинка 1")
        secondVC.navigationItem.title = "Profile"
        
        viewControllers = [firstNavController, secondNavController]
    }
}
