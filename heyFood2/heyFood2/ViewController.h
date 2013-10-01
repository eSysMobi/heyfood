//
//  ViewController.h
//  HeyFood
//
//  Created by eSys.me on 26.09.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController2.h"
@class ViewController2;
@interface ViewController : UIViewController{
    UILabel *nameLabel;
    UILabel *passLabel;
    UITextField *nameText;
    UITextField *passText;
    UIButton *logButton;
    
}
@property(strong,nonatomic) ViewController2 *viewController2;
@property (retain, nonatomic) IBOutlet UILabel *nameLabel;
@property (retain, nonatomic) IBOutlet UILabel *passLabel;
@property (retain, nonatomic) IBOutlet UITextField *nameText;
@property (retain, nonatomic) IBOutlet UITextField *passText;
- (IBAction)logButton:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *logButton;

@end
