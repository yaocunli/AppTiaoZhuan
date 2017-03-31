//
//  ViewController.m
//  FirstApp
//
//  Created by lcy on 17/3/31.
//  Copyright © 2017年 ZG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)ToSecondApp:(id)sender {
    
    // 取得需要跳转到的app的url-scheme
    NSURL * url = [NSURL URLWithString:@"SecondApp://"];
    // 判断是否安转
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        // if安装的话，打开
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:nil];
    } else {
        // 或者跳转到的app的对应的appstore的网址
        NSLog(@"还没有安装");
    }
    
}

- (IBAction)ToPageOne:(id)sender {
    
    // 取得需要跳转到的app的url-scheme
    NSURL * url = [NSURL URLWithString:@"SecondApp://page1?FirstApp"];
    // 判断是否安转
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        // if安装的话，打开
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:nil];
    } else {
        // 或者跳转到的app的对应的appstore的网址
        NSLog(@"还没有安装");
    }
    
}

- (IBAction)ToPageTwo:(id)sender {
    
    // 取得需要跳转到的app的url-scheme
    NSURL * url = [NSURL URLWithString:@"SecondApp://page2?FirstApp"];
    // 判断是否安转
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        // if安装的话，打开
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:nil];
    } else {
        // 或者跳转到的app的对应的appstore的网址
        NSLog(@"还没有安装");
    }

    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
