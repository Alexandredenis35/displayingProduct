//
//  TabBarViewController.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 22/09/2022.
//

import UIKit

class TabBarViewController: UITabBarController {
     var coordinator: RouterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVCs()
    }
    
    private func setupVCs() {
        view.backgroundColor = .systemBackground
        tabBar.tintColor = .label
        setViewControllers([
            createNavController(for: FirstViewController(), title: "Explorer", image: UIImage(systemName: "globe")!),
            createNavController(for: SecondViewController(), title: "Home", image: UIImage(systemName: "house")!),
            createNavController(for: ThirdViewController(), title: "Mon compte", image: UIImage(systemName: "person.crop.circle")!)
        
        ], animated: false)
    }
    
    private func createNavController(for rootViewController: UIViewController,
                                    title: String,
                                    image: UIImage) -> UIViewController {
        let navC = UINavigationController(rootViewController: rootViewController)
        navC.navigationBar.barTintColor = UIColor.customGreen
    navC.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
       rootViewController.view.backgroundColor = UIColor.customGrey
       rootViewController.tabBarItem.title = title
       rootViewController.tabBarItem.image = image
       rootViewController.navigationItem.title = "Bonjour"
       rootViewController.title = title
       return navC
   }
    
    
    
}
