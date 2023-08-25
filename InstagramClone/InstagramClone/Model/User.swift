//
//  User.swift
//  InstagramClone
//
//  Created by man ching chan on 23/8/2023.
//

import Foundation


struct User: Identifiable,Codable,Hashable{
    
    let id : String
    var username : String
    var profileImageUrl: String?
    var fullname : String?
    var bio : String?
    let email : String
    
    
    
}


extension User{
    
    static var MOCK_USERS:[User] = [
    
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "spider-1", fullname: "Peter Parker", bio: "Kwun Tong", email: "spiderman@email.com"),
    
        .init(id: NSUUID().uuidString, username: "superman", profileImageUrl: "spider-2", fullname: "Dunker", bio: "Kln Tong", email: "duner@email.com"),
        
        .init(id: NSUUID().uuidString, username: "wonderwoman", profileImageUrl: "spider-3", fullname: "Peter Parker", bio: "Kwun Tong", email: "wonderwoman@email.com")
    
    ]
    
}
