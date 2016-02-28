//
//  TwitterTableViewCell.swift
//  Twitter
//
//  Created by Quintin Frerichs on 2/16/16.
//  Copyright © 2016 Quintin Frerichs. All rights reserved.
//

import UIKit

class TwitterTableViewCell: UITableViewCell {
    var numberLikes: Int = 0
    var numberRetweets: Int = 0
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBOutlet weak var favsButton: UIButton!
    
    @IBOutlet weak var retweetsLabel: UILabel!
    @IBOutlet weak var favoritesLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    var tweet: Tweet!{
        didSet{
            numberLikes = tweet.numLikes!
            numberRetweets = tweet.numRetweets!
            

             if(numberLikes>=1){
            favoritesLabel.text = "\(numberLikes)"
            }
             else{
                favoritesLabel.text = ""
            }
            if(numberRetweets >= 1)
            {
            retweetsLabel.text = "\(numberRetweets)"
            }
            else{
                retweetsLabel.text = ""
            }
            if tweet.createdAtString != nil{
            timeLabel.text = tweet.convertedDate
            }
            else{
                timeLabel.text = nil
            }
            if tweet.user!.profileImageURL != nil{
             profileImageView.setImageWithURL(tweet.user!.profileImageURL!)
            }
           
            if tweet.username != nil{
            usernameLabel.text = tweet.username
            }
            else{
                usernameLabel.text = nil
            }
            if tweet.text != nil{
            tweetLabel.text = tweet.text
            tweetLabel.sizeToFit()
            }
            else{
                tweetLabel.text = nil
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 3
        profileImageView.clipsToBounds = true
        usernameLabel.preferredMaxLayoutWidth = usernameLabel.frame.size.width
        
        // Initialization code
    }

    @IBAction func onFavorite(sender: AnyObject) {
        numberLikes++
        favoritesLabel.textColor = UIColor(red: 0.86, green: 0.08, blue: 0.24, alpha: 1.0)
        favoritesLabel.text = "\(numberLikes)"
        favsButton.setImage(UIImage(named: "like-action-on-red"), forState: UIControlState.Normal)
    }
    
    
    @IBAction func onRetweet(sender: AnyObject) {
        numberRetweets++
        retweetsLabel.textColor = UIColor(red: 0.6, green: 1.0, blue: 0.6, alpha: 1.0)
        retweetsLabel.text = "\(numberRetweets)"
        retweetButton.setImage(UIImage(named: "retweet-action-on-green"), forState: UIControlState.Normal)
    }
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
