//
//  AppDelegate.m
//  SecondApp
//
//  Created by lcy on 17/3/31.
//  Copyright © 2017年 ZG. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    
    UINavigationController * rootNav = (UINavigationController*)self.window.rootViewController;
    // 获取到主控制器
    ViewController * homeVC = [rootNav.childViewControllers firstObject];
    homeVC.urlstring = url.absoluteString;
    // 每次跳转前，必须在跟控制器，否则会出现导航栏返回按钮，可以返回多次的错误。
    [rootNav popToRootViewControllerAnimated:NO];
    
    if ([url.absoluteString containsString:@"page1"]) {
        // 跳转到应用App-B的Page1页面
        // 根据segue标示进行跳转
        [homeVC performSegueWithIdentifier:@"homeToPage1" sender:nil];
    } else if ([url.absoluteString containsString:@"page2"]) {
        // 跳转到应用App-B的Page2页面
        // 根据segue标示进行跳转
        [homeVC performSegueWithIdentifier:@"homeToPage2" sender:nil];
    }
    
    
    
    
    
    return  YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
