//
//  FriendsChallengeViewController.h
//  Prototype
//
//  Created by CJ Ogbuehi on 2/7/14.
//  Copyright (c) 2014 CJ Ogbuehi. All rights reserved.
//
// A table view that will show all challenges sent by this users.
// friends to be displayed within recent activity



#import <UIKit/UIKit.h>
#import "User.h"

@interface FriendsChallengeViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain)User *myUser;

@end
