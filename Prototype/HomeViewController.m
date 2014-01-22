//
//  HomeViewController.m
//  Prototype
//
//  Created by CJ Ogbuehi on 1/18/14.
//  Copyright (c) 2014 CJ Ogbuehi. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginViewController.h"


@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *score;

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
    //if user not logged in segue to login screen
       if (![[NSUserDefaults standardUserDefaults] valueForKey:@"logged"]){
        [self performSegueWithIdentifier:@"segueToLogin" sender:self];
       }else{
           self.username.text = self.myUser.username;
           self.score.text = [self.myUser.score stringValue];
       }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)logout:(UIButton *)sender {
    [self performSegueWithIdentifier:@"segueToLogin" sender:self];
}


#pragma -mark Segues
- (IBAction)unwindToHomeController:(UIStoryboardSegue *)segue
{    
}

@end