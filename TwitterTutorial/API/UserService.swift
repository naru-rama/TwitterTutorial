//
//  UserService.swift
//  TwitterTutorial
//
//  Created by 中原護 on 2023/09/10.
//

import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser(completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
            
            let user = User(uid: uid, dectionary: dictionary)
            completion(user)
        }
        
    }
}
