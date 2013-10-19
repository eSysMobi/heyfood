//
//  ViewController4.m
//  heyFood2
//
//  Created by eSys.me on 05.10.13.
//  Copyright (c) 2013 esys.mobi. All rights reserved.
//

#import "ViewController4.h"
#import "ViewController5.h"
#import "RestInfo.h"
@interface ViewController4 ()

@end

@implementation ViewController4
@synthesize viewController5,restInfo;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{self.navigationItem.title=@"Рестораны";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    NSURL *url = [NSURL URLWithString:@"http://howwedo.net/food/index.php/user_api/rest/format/json"];
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
    NSString *str=[[[result objectForKey:@"0"] objectAtIndex:indexPath.row] objectForKey:@"picture"];
    NSString *restid =[[[result objectForKey:@"0"] objectAtIndex:indexPath.row] objectForKey:@"id"];
    if ([str length]>4) {
        imv.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://howwedo.net/food/upload/%@/%@%@",restid,[str substringToIndex:[str length]-4],@"_s.jpg"]]]];}
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(98, 10, 100, 50)];
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
    restInfo =[[RestInfo alloc] initWithNibName:@"RestInfo" bundle:nil];
    restInfo.detailItem=[NSString stringWithFormat:@"%i",indexPath.row];
    [self.navigationController pushViewController:restInfo animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
