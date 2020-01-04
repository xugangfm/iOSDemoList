//
//  ListViewController.m
//  AVPlayerDemo
//
//  Created by xugang on 2019/12/7.
//  Copyright © 2019 yiban. All rights reserved.
//

#import "ListViewController.h"
#import "ViewController.h"


@interface ListViewController ()

@property (nonatomic ,strong) NSMutableArray *dataList;
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",@"load listVC");
    
    self.tabview =[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tabview.delegate = self;
    self.tabview.dataSource = self;
    [self.view addSubview:self.tabview];
    
    self.dataList = [[NSMutableArray alloc]init];
    
    [_dataList addObject:@"video record"];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)viewDidAppear:(BOOL)animated
{
   // ViewController *vc = [[ViewController alloc]init];
    
    // [self.navigationController pushViewController:vc animated:YES];
    
    NSLog(@"%@",@"go 2 record");
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * showUserInfoCellIdentifier = @"ShowUserInfoCell";
    UITableViewCell * cell = [tableView  dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
if (cell == nil){
    // Create a cell to display an ingredient.
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:showUserInfoCellIdentifier]
            ;
}

// Configure the cell.
    cell.textLabel.text=[self.dataList objectAtIndex:indexPath.row];
    return cell;
}
-
(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 65.0f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(0 == indexPath.row){
        ViewController *vc = [[ViewController alloc]init];
       // vc.navigationController.navigationBarHidden=YES;
        [self.navigationController pushViewController:vc animated:NO];
    }
}

@end
