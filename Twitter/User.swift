//
//  User.swift
//  Twitter
//
//  Created by Quintin Frerichs on 2/16/16.
//  Copyright © 2016 Quintin Frerichs. All rights reserved.
//

import UIKit
var _currentUser: User?
let currentUserKey = "kUserKey"
let userDidLoginNotification = "userDidLoginNotification"
let userDidLogoutNotification = "userDidLogoutNotification"
class User: NSObject {
    var name: String?
    var screenname: String?
    var profileImageURL: NSURL?
    var tagline: String?
    var dictionary: NSDictionary
    var favsCount: Int?
    var tweetCount: Int?
    var following: Int?
    var followers: Int?
    init(dictionary: NSDictionary){
        self.dictionary = dictionary
        tweetCount = (dictionary["statuses_count"]as? Int)!
        favsCount = (dictionary["favourites_count"]as? Int)!
       following = (dictionary["friends_count"]as? Int)!
        followers = (dictionary["followers_count"]as? Int)!
        name = dictionary["name"] as? String
        screenname = dictionary["screen_name"] as? String
     let profilepictureURLString = dictionary["profile_image_url_https"] as? String
        if let profilepictureURLString = profilepictureURLString{
            profileImageURL = NSURL(string:profilepictureURLString)
        }
        tagline = dictionary["description"] as? String
    }
    func logout(){
        User.currentUser = nil
        TwitterClient.sharedInstance.requestSerializer.removeAccessToken()
        NSNotificationCenter.defaultCenter().postNotificationName(userDidLogoutNotification, object: nil)
    
    }
    class var currentUser: User? {
        get {
        if _currentUser == nil {
        //logged out or just boot up
        let data = NSUserDefaults.standardUserDefaults().objectForKey(currentUserKey) as? NSData
        if data != nil {
        let dictionary: NSDictionary?
        do {
        try dictionary = NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as? NSDictionary
        _currentUser = User(dictionary: dictionary!)
    } catch {
        print(error)
        }
        }
        }
        return _currentUser
        }
        
        
        set(user) {
            _currentUser = user
            //User need to implement NSCoding; but, JSON also serialized by default
            if let _ = _currentUser {
                var data: NSData?
                do {
                    try data = NSJSONSerialization.dataWithJSONObject(user!.dictionary, options: .PrettyPrinted)
                    NSUserDefaults.standardUserDefaults().setObject(data, forKey: currentUserKey)
                } catch {
                    print(error)
                }
            }
        }
    }
    
    
    
}
