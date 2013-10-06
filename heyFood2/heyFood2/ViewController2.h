//
//  ViewController2.h
//  HeyFood
//
//  Created by eSys.me on 26.09.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController3.h"
@class ViewController3;
@interface ViewController2 : UIViewController <UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>{
    NSMutableDictionary *dict;
    id result;
}
@property(strong,nonatomic)ViewController3*viewController3;
@property (retain, nonatomic) IBOutlet UITableView *districtTable;

@end
