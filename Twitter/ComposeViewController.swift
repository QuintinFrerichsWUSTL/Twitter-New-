//
//  ComposeViewController.swift
//  Twitter
//
//  Created by Quintin Frerichs on 2/25/16.
//  Copyright © 2016 Quintin Frerichs. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    

    
    @IBOutlet weak var handleLabel: UILabel!
    @IBOutlet weak var pictureView: UIImageView!
    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var usernameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tweetText = textField.text as! String
        let user = User.currentUser
        usernameLabel.text = user!.name
        handleLabel.text = "@ \(user!.screenname!)"
        if user!.profileImageURL != nil{
            pictureView.setImageWithURL(user!.profileImageURL!)
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onCancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
