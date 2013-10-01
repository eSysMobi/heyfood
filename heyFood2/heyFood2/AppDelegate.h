//
//  AppDelegate.h
//  HeyFood
//
//  Created by eSys.me on 26.09.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ViewController2.h"
@class ViewController;
@class ViewController2;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic) ViewController *viewController;
@property (strong,nonatomic) ViewController2 *viewController2;
@end
