//
//  ViewController.m
//  HeyFood
//
//  Created by eSys.me on 26.09.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{ self.view.backgroundColor = [UIColor greenColor];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {

}
- (IBAction)logButton:(id)sender {
    self.viewController2 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    [self.navigationController pushViewController:self.viewController2 animated:YES];

}
@end
