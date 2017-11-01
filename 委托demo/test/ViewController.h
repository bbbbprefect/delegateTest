//
//  ViewController.h
//  test
//
//  Created by zx on 2017/9/6.
//  Copyright © 2017年 maple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@end

@protocol MyDelegate <NSObject>

@required
-(void)passValue:(NSString *)str;

@optional
-(void)passValue2:(NSString *)str2;



@end

