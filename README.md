# Project 4 - Twitter

Twitter is a basic twitter app to read and compose tweets the [Twitter API](https://apps.twitter.com/).

Time spent: 7.5-8 hours spent in total

## User Stories

The following **required** functionality is completed:

- [X ] User can sign in using OAuth login flow
- [X ] User can view last 20 tweets from their home timeline
- [X ] The current signed in user will be persisted across restarts
- [X ] In the home timeline, user can view tweet with the user profile picture, username, tweet text, and timestamp.
- [X ] Retweeting and favoriting should increment the retweet and favorite count.

The following **optional** features are implemented:

- [ ] User can load more tweets once they reach the bottom of the feed using infinite loading similar to the actual Twitter client.
- [ ] User should be able to unretweet and unfavorite and should decrement the retweet and favorite count.
- [ X] User can pull to refresh.

The following **additional** features are implemented:

- [ X] List anything else that you can get done to improve the app functionality!
- Tried to make the UI look nicer than my past apps: used twitter logos/icons, made retweet/like buttons turn differnet colors when pressed for the first time

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How to get the formatting of the date better 
2. Making sure my pull-to-refresh is actually working. More generally, better understaing the call to the network that's going on here, maybe to implement infinite scroll for next week. 

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<http://imgur.com/bGFb9we>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [2016] [Quintin Frerichs]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    

Time spent: **X** hours spent in total

## User Stories

The following **required** functionality is completed:

- [ X] Tweet Details Page: User can tap on a tweet to view it, with controls to retweet, favorite, and reply.
- [ X] Profile page:
- [ X] Contains the user header view
- [ X] Contains a section with the users basic stats: # tweets, # following, # followers
- [ X] Home Timeline: Tapping on a user image should bring up that user's profile page
- [ X] Compose Page: User can compose a new tweet by tapping on a compose button.

The following **optional** features are implemented:

- [ ] When composing, you should have a countdown in the upper right for the tweet limit.
- [ ] After creating a new tweet, a user should be able to view it in the timeline immediately without refetching the timeline from the network.
- [ ] Profile Page
   - [ ] Implement the paging view for the user description.
   - [ ] As the paging view moves, increase the opacity of the background screen. See the actual Twitter app for this effect
   - [ ] Pulling down the profile page should blur and resize the header image.
- [ ] Account switching
   - [ ] Long press on tab bar to bring up Account view with animation
   - [ ] Tap account to switch to
   - [ ] Include a plus button to Add an Account
   - [ ] Swipe to delete an account

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Adding a tableview to the profile page   
2. Improving UI/autolayout

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

http://i.imgur.com/7jPz4FJ.gifv

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
