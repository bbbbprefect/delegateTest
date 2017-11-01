//
//  ViewController.m
//  test
//
//  Created by zx on 2017/9/6.
//  Copyright © 2017年 maple. All rights reserved.
//

#import "ViewController.h"
#import "testViewController.h"

@interface ViewController ()
{
    testViewController *nextView;
    
}

@property(assign,nonatomic)id<MyDelegate> delegate;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    nextView = [[testViewController alloc]init];
    self.delegate = nextView;
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    btn.backgroundColor = [UIColor redColor];
    [btn.titleLabel setText:@"跳转"];
    [btn setTitle:@"跳转" forState:0];
    [self.view addSubview:btn];
    [btn addTarget:NULL action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
}

-(void)jump
{
    [_delegate passValue:@"第一个委托"];
    [_delegate passValue2:@"第二个委托"];
    [self presentViewController:nextView animated:YES completion:nil];
 //   NSLog(@"点击");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
