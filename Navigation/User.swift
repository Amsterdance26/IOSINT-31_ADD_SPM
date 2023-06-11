//
//  User.swift
//  Navigation
//
//  Created by Василий Васильевич on 11.06.2023.
//

import UIKit

class User {
    let login: String
    let fullName: String
    let avatar: UIImage
    let status: String
    
    init(login: String, fullName: String, avatar: UIImage, status: String) {
        self.login = login
        self.fullName = fullName
        self.avatar = avatar
        self.status = status
    }
}

protocol UserService {
    func getUser(for login: String) -> User?
}

class CurrentUserService: UserService {
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func getUser(for login: String) -> User? {
        if login == user.login {
            return user
        }
        return nil
    }
}
