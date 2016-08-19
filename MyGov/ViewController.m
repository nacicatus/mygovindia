//
//  ViewController.m
//  MyGov
//
//  Created by Saurabh Sikka on 1/30/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//
#import <Social/Social.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webview;

-(IBAction)tweetButtonPressed:(id)sender{
    NSString *theMessage = [NSString stringWithFormat:@"@mygovindia "];
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:theMessage];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You can't send a tweet right now. Make sure your device has an internet connection and you have at least one Twitter account set up." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }

}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *strURL = @"http://mygov.in";
    NSURL *url = [NSURL URLWithString:strURL];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:urlRequest];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
