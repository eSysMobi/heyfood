//
//  FoodInfo.h
//  heyFood2
//
//  Created by eSys.me on 18.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodInfo : UIViewController{
id result;    
}
@property (strong, nonatomic) id detailItem3;
@property (weak, nonatomic) IBOutlet UIImageView *foodImage;
@property (weak, nonatomic) IBOutlet UILabel *foodName;
@property (weak, nonatomic) IBOutlet UILabel *shortDiskr;
@property (weak, nonatomic) IBOutlet UILabel *fullDiskr;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
- (IBAction)addButtonAct:(id)sender;

@end
