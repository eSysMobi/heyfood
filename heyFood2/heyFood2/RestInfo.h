//
//  RestInfo.h
//  heyFood2
//
//  Created by eSys.me on 18.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController5.h"
@class ViewController5;
@interface RestInfo : UIViewController{
id result;
}
@property (strong, nonatomic) id detailItem;
@property(strong,nonatomic)ViewController5 *viewController5;
@property (weak, nonatomic) IBOutlet UIImageView *restImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *adresLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *minLabel;
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;
@property (weak, nonatomic) IBOutlet UILabel *transpLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayLabel;
@property (weak, nonatomic) IBOutlet UILabel *InfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel2;
- (IBAction)menuButtonAct:(id)sender;

@end
