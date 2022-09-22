//
//  Storyboards.swift
//  CoordinatorPattern
//
//  Created by omer-mac on 22.09.2022.
//

import UIKit

enum StoryboardName: String{
    case home = "Home"
    case signIn = "SignIn"
    case signUp = "SignUp"
}

protocol Storyboards {
    static func instantiane(name: StoryboardName) -> Self
}

extension Storyboards where Self: UIViewController{
    static func instantiane(name: StoryboardName) -> Self{
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: name.rawValue, bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
