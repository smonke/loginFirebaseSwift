//
//  DataService.swift
//  LoginExampleSwift
//
//  Created by Sonja Moenkemeyer on 15.04.16.
//  Copyright © 2016 smonke. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let dataService = DataService()

    private var _BASE_REF = Firebase(url: "\(BASE_URL)")
    private var _USER_REF = Firebase(url: "\(BASE_URL)/users")

    var BASE_REF: Firebase {
        return _BASE_REF
    }

    var USER_REF: Firebase {
        return _USER_REF
    }

    var CURRENT_USER_REF : {
        let userID = NSUserDefaults.standardUserDefaults().valueForKey("uid") as! String

        let currentUser = Firebase(url: "\(BASE_REF)").childByAppendingPath("users").childByAppendingPatch(userID)

        return currentUser!
    }


    
}
