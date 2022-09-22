//
//  HomeCoordinator.swift
//  CoordinatorPattern
//
//  Created by omer-mac on 22.09.2022.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = HomeController.instantiane(name: .home)
        controller.coordinator = self
        navigationController.show(controller, sender: nil)
    }
    
    func showSignInController(){
        let controller = SignInViewController.instantiane(name: .signIn)
        navigationController.show(controller, sender: nil)
    }
    
    func showSignUpController(){
        let controller = SignUpViewController.instantiane(name: .signUp)
        navigationController.show(controller, sender: nil)
    }
}
