//
//  ProfileViewController.swift
//  Twitter
//
//  Created by Quintin Frerichs on 2/23/16.
//  Copyright © 2016 Quintin Frerichs. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var followingLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    
    var user = User.currentUser
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //let user = User.currentUser
        if user!.profileImageURL != nil{
        profileImageView.setImageWithURL(user!.profileImageURL!)
        }
        if user!.followers != 0{
        
        followersLabel.text = ("Followers: \(user!.followers!)")
        }
        if user!.following != 0{
             followingLabel.text = ("Following: \(user!.following!)")
        }
        if user!.tweetCount != 0{
            countLabel.text = ("Tweets: \(user!.tweetCount!)")
        }
        
       
       
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBack(sender: AnyObject) {
        self.performSegueWithIdentifier("backSegue", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
