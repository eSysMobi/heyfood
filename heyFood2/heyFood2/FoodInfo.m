//
//  FoodInfo.m
//  heyFood2
//
//  Created by eSys.me on 18.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import "FoodInfo.h"

@interface FoodInfo ()

@end

@implementation FoodInfo
@synthesize foodImage,shortDiskr,fullDiskr,detailItem3,foodName,priceLabel;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{self.navigationItem.title=@"Блюдо";
    NSURL *url = [NSURL URLWithString:@"http://howwedo.net/food/index.php/user_api/food/format/json?resid=1"];
    NSData *jsonData = [NSData dataWithContentsOfURL:url];
    NSError *error = nil;
    result = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    NSString *str=[[[result objectForKey:@"0"] objectAtIndex:[detailItem3 integerValue]] objectForKey:@"picture"];
    //NSString *restid =[[[result objectForKey:@"0"] objectAtIndex:[detailItem3 integerValue]] objectForKey:@"id"];/*до тех пор пока у каждого ресторана не появятся свои картинки restid будет =1*/
    NSString *restid =@"1";
    foodImage.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://howwedo.net/food/upload/%@/%@%@",restid,[str substringToIndex:[str length]-4],@"_s.jpg"]]]];
    [foodName setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem3 integerValue]] objectForKey:@"ru_name"]];
    [shortDiskr setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem3 integerValue]] objectForKey:@"ru_short_descr"]];
    [fullDiskr setText:[[[result objectForKey:@"0"]objectAtIndex:[detailItem3 integerValue]] objectForKey:@"ru_add_descr"]];
    [priceLabel setText:[NSString stringWithFormat:@"%i",[[[[result objectForKey:@"0"]objectAtIndex:[detailItem3 integerValue]] objectForKey:@"price"]integerValue]]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonAct:(id)sender {
}
@end
