//
//  ViewController5.h
//  heyFood2
//
//  Created by eSys.me on 06.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodInfo.h"
@class FoodInfo;
@interface ViewController5 : UIViewController <UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>{
    NSMutableDictionary *dict;
    id result;
}
@property(strong,nonatomic)FoodInfo *foodInfo;
@property (strong, nonatomic) id detailItem2;
@property (retain, nonatomic) IBOutlet UITableView *foodTable;

@end
