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
    var profileImageUrl: URL?
    let uid: String
    
    init(uid: String, dectionary: [String: AnyObject]) {
        self.uid = uid
        
        self.fullname = dectionary["fullname"] as? String ?? ""
        self.email = dectionary["email"] as? String ?? ""
        self.username = dectionary["username"] as? String ?? ""
        
        if let profileImageUrlString = dectionary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else { return }
            self.profileImageUrl = url
        }
    }
}
