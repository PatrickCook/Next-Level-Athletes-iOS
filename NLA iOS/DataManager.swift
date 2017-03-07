//
//  DataController.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/15/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import Foundation
import Alamofire

class DataManager {
    let appDefaults = UserDefaults.standard
    var loggedIn: Bool
    
    //Allows the Active View to initialize a handshake with the server to check connectivity
    init() {
        loggedIn = appDefaults.bool(forKey: "authenticated")
    }
    
    func handShakeInitializer(userId: String, userPassHash: String, userAuthenticated: Bool){
        let headers = ["userAuth": "test"]
        
        Alamofire.request("http://ec2-52-43-205-161.us-west-2.compute.amazonaws.com/php/ios_auth.php", headers: headers).responseJSON { response in
            print(response)
        }
        appDefaults.set(true, forKey: "authenticated")
    }
}

