//
//  ViewController4.h
//  heyFood2
//
//  Created by eSys.me on 05.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController5.h"
@interface ViewController4 : UIViewController <UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>{
    NSMutableDictionary *dict;
    id result;
}
@property (retain, nonatomic) IBOutlet UITableView *restTable;
@property(strong,nonatomic) ViewController5 *viewController5;
@end
