//
//  UserDataService.swift
//  SmackChat
//
//  Created by Brian Canela on 8/3/17.
//  Copyright © 2017 CanelaApps. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    //you can't modify this var in other files only in this file.
    public private(set) var id = " "
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String){
        self.avatarName = avatarName
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
