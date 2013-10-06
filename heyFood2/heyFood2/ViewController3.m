//
//  ViewController3.m
//  heyFood2
//
//  Created by eSys.me on 05.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController4.h"
@interface ViewController3 ()

@end

@implementation ViewController3
@synthesize cuisinesTable,viewController4;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
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
    NSLog(@"%i",[result count]);
    return [result count];}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;}


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
    //imv.image=[UIImage imageNamed:@"avatar копия.png"];
    [cell addSubview:imv];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 88;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    viewController4 =[[ViewController4 alloc] initWithNibName:@"ViewController4" bundle:nil];
    [self.navigationController pushViewController:viewController4 animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
