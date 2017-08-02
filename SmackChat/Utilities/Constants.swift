//
//  Constants.swift
//  SmackChat
//
//  Created by Brian Canela on 7/31/17.
//  Copyright © 2017 CanelaApps. All rights reserved.
//

import Foundation


typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://chat-in-o.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"


//SEGUES
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"


//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
