//
//  User.swift
//  TwitterTutorial
//
//  Created by 中原護 on 2023/09/10.
//

import Foundation

struct User {
    let fullname: String
    let email: String
    let username: String
    let profileImageUrl: String
    let uid: String
    
    init(uid: String, dectionary: [String: AnyObject]) {
        self.uid = uid
        
        self.fullname = dectionary["fullname"] as? String ?? ""
        self.email = dectionary["email"] as? String ?? ""
        self.username = dectionary["username"] as? String ?? ""
        self.profileImageUrl = dectionary["profileImageUrl"] as? String ?? ""
    }
}
