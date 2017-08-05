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
    
   func returnUIColor(components: String) -> UIColor {
  //    " [0.180392156862745, 0.168627450980392, 0.854901960784314, 1]"
    
        let scanner = Scanner(string: components)
        let skipped = CharacterSet(charactersIn: "[], ") //skip 4 character  [][]
        let comma = CharacterSet(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
    
        var r, g, b, a : NSString?
    
        scanner.scanUpToCharacters(from: comma, into: &r)
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)
    
        let defaultColor = UIColor.lightGray
    
        guard let rUnwrapped = r else {return defaultColor}
        guard let gUnwrapped = g else {return defaultColor }
        guard let bUnwrapped = b else { return defaultColor }
        guard let aUnwrapped = a else {return defaultColor }
    
    //convert cgfloat
        let rfloat = CGFloat(rUnwrapped.doubleValue)
         let gfloat = CGFloat(gUnwrapped.doubleValue)
         let bfloat = CGFloat(bUnwrapped.doubleValue)
         let aloat = CGFloat(aUnwrapped.doubleValue)
    
        let newUIColor = UIColor(red: rfloat , green: gfloat , blue: bfloat, alpha: aloat)
    
        return newUIColor
    
  }
   
    func logoutUser() {
        id = ""
        avatarName = ""
        avatarColor = ""
        email = ""
        name = ""
        AuthService.instance.isLoggedIn = false
        AuthService.instance.userEmail = ""
        AuthService.instance.authToken = ""
    }
    
    
    
    
    
    
    
    
    
    
}
