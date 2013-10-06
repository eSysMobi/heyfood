//
//  ViewController2.m
//  HeyFood
//
//  Created by eSys.me on 26.09.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"
@interface ViewController2 ()

@end

@implementation ViewController2
@synthesize districtTable,viewController3;
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
    self.navigationItem.title =@"Районы";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
NSURL *url = [NSURL URLWithString:@"http://howwedo.net/food/index.php/user_api/districts/format/json"];
    NSData *jsonData = [NSData dataWithContentsOfURL:url];
    NSError *error = nil;
    result = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
  //  [result count];
    NSLog(@"%@",result);
     NSLog(@"count = %i",[[result objectForKey:@"0"] count]);
    return 1;}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
return [[result objectForKey:@"0"] count];}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //static NSString *simpleTableIdentifier = @"SimpleTableItem";
    static NSString *CellIdentifier;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    UIImageView *imv=[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 68, 68)];
    imv.backgroundColor=[UIColor darkGrayColor];
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(98, 10, 200, 50)];
    label.text=[[[result objectForKey:@"0"] objectAtIndex:indexPath.row] objectForKey:@"ru_name"];
    //imv.image=[UIImage imageNamed:@"avatar копия.png"];
    NSLog(@"%i",indexPath.row);
     //NSLog(@"%@",[result objectForKey:[NSString stringWithFormat:@"0",(indexPath.row)]]);
    NSLog(@"%@",[[[result objectForKey:@"0"] objectAtIndex:indexPath.row] objectForKey:@"ru_name"]);
    [cell addSubview:imv];
    [cell addSubview:label];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
           return 88;
    }

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    viewController3 =[[ViewController3 alloc] initWithNibName:@"ViewController3" bundle:nil];
    [self.navigationController pushViewController:viewController3 animated:YES];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dealloc {

}
@end
