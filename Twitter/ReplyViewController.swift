//
//  ReplyViewController.swift
//  Twitter
//
//  Created by Quintin Frerichs on 3/2/16.
//  Copyright © 2016 Quintin Frerichs. All rights reserved.
//

import UIKit

class ReplyViewController: UIViewController {

    
    @IBOutlet weak var replyLabel: UITextView!
    
    var replyText: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onReply(sender: AnyObject) {
        replyText = replyLabel.text
        if replyText != nil {
            let tweet = replyText!.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
            
            TwitterClient.sharedInstance.replying(tweet!)
        }
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
