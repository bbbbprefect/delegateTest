//
//  testViewController.m
//  test
//
//  Created by zx on 2017/9/6.
//  Copyright © 2017年 maple. All rights reserved.
//

#import "testViewController.h"

@interface testViewController ()

@end

@implementation testViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewWillAppear:(BOOL)animated
{
    NSLog(@"%@",self.s1);
}

-(void)passValue:(NSString *)str
{
    self.s1 = str;
    NSLog(@"%@",self.s1);
}

-(void)passValue2:(NSString *)str2
{
    self.s2 = str2;
    NSLog(@"%@",self.s2);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
