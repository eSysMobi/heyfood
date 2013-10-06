//
//  ViewController3.h
//  heyFood2
//
//  Created by eSys.me on 05.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController4.h"
@class ViewController4;
@interface ViewController3 : UIViewController <UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>{
    NSMutableDictionary *dict;
    id result;
}
@property (strong,nonatomic) ViewController4*viewController4;
@property (retain, nonatomic) IBOutlet UITableView *cuisinesTable;
@end
