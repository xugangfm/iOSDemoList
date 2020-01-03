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

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",@"load listVC");
    
    
   
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
@end
