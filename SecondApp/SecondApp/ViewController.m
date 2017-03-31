//
//  ViewController.m
//  SecondApp
//
//  Created by lcy on 17/3/31.
//  Copyright © 2017年 ZG. All rights reserved.
//

#import "ViewController.h"
#import "FirstPageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"homeToPage1"]) {
        // 获得将要跳转的界面Page1的控制器
        FirstPageViewController *Page1Vc = segue.destinationViewController;
        // 保存完整的App-A的URL给跳转界面Page1
        Page1Vc.urlString = self.urlstring;
    } else if ([segue.identifier isEqualToString:@"homeToPage2"]) {
       
        
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
