//
//  MainRouter.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 22/09/2022.
//

import Foundation
import UIKit

protocol RouterProtocol: AnyObject {
    var childRouters: [RouterProtocol] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

class MainRouter: RouterProtocol {
   
    var childRouters = [RouterProtocol]()
    var navigationController: UINavigationController

    // MARK: Initialisation

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
      
    }
    
    func start() {
    }
    
    
    
}
