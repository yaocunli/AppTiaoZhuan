//
//  FirstPageViewController.m
//  SecondApp
//
//  Created by lcy on 17/3/31.
//  Copyright © 2017年 ZG. All rights reserved.
//

#import "FirstPageViewController.h"

@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)BackToFirstApp:(id)sender {
    
    // 1.拿到对应应用程序的URL Scheme
    NSString *urlSchemeString = [[self.urlString componentsSeparatedByString:@"?"] lastObject];
    NSString *urlString = [urlSchemeString stringByAppendingString:@"://"];
    
    // 2.获取对应应用程序的URL
    NSURL *url = [NSURL URLWithString:urlString];
    
    // 3.判断是否可以打开
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:nil];
    }
    
}


@end
