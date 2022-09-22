//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by omer-mac on 22.09.2022.
//

import UIKit

class HomeController: UIViewController, Storyboards {

    var coordinator: HomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func btnSignIn(_ sender: Any) {
        coordinator?.showSignInController()
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        coordinator?.showSignUpController()
    }
    
}

