//
//  ViewController.h
//  MyGov
//
//  Created by Saurabh Sikka on 1/30/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIWebView *webview;
}
-(IBAction)tweetButtonPressed:(id)sender;
@property (nonatomic, strong) UIWebView *webview;

@end
