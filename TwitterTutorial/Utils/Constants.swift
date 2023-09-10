//
//  Constants.swift
//  TwitterTutorial
//
//  Created by 中原護 on 2023/09/05.
//

import Firebase

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_imeges")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")
