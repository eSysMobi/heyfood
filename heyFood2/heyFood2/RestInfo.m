//
//  RestInfo.m
//  heyFood2
//
//  Created by eSys.me on 18.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import "RestInfo.h"
#import "ViewController5.h"

@interface RestInfo ()

@end

@implementation RestInfo
@synthesize viewController5,restImage,detailItem,nameLabel,adresLabel,timeLabel,minLabel,moneyLabel,transpLabel,dayLabel,InfoLabel,timeLabel2;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{self.navigationItem.title=@"Информация";
    NSURL *url = [NSURL URLWithString:@"http://howwedo.net/food/index.php/user_api/rest/format/json"];
    NSData *jsonData = [NSData dataWithContentsOfURL:url];
    NSError *error = nil;
    result = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    NSString *str=[[[result objectForKey:@"0"] objectAtIndex:[detailItem integerValue]] objectForKey:@"picture"];
     NSString *restid =[[[result objectForKey:@"0"] objectAtIndex:[detailItem integerValue]] objectForKey:@"id"];
    restImage.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://howwedo.net/food/upload/%@/%@%@",restid,[str substringToIndex:[str length]-4],@"_s.jpg"]]]];
    [nameLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"ru_name"]];
    [adresLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"address"]];
    [timeLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"time1"]];
    [timeLabel2 setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"time2"]];
   // [minLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"min_order"]];
   // [moneyLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"del_cost"]];
    [transpLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"del_time"]];
    [dayLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"schedule"]];
    [InfoLabel setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem integerValue]] objectForKey:@"additional_ru"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuButtonAct:(id)sender {
    viewController5 =[[ViewController5 alloc] initWithNibName:@"ViewController5" bundle:nil];
    viewController5.detailItem2=[[[result objectForKey:@"0"] objectAtIndex:indexPath.row] objectForKey:@"id"];
    [self.navigationController pushViewController:viewController5 animated:YES];

}
@end
