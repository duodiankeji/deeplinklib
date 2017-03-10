//
//  AMAppDelegate.m
//  AdmoreSDKDeepLink
//
//  Created by wanglin.sun on 01/11/2017.
//  Copyright (c) 2017 wanglin.sun. All rights reserved.
//

#import "AMAppDelegate.h"
#import "AdmoreSDKDeepLink.h"

@implementation AMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    [AdmoreSDKDeepLink setAppId:@"am888888" appKey:@"your app key"];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL) application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    
    if( [AdmoreSDKDeepLink handleUrl:url] ) {
        return YES;
    }
    //处理您的其他逻辑
    return NO;
    
    //或者直接 return [AdmoreSDKDeepLink handleUrl:url];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    
    if( [AdmoreSDKDeepLink handleUrl:url] ) {
        return YES;
    }
    //处理您的其他逻辑
    return NO;
    
    //或者直接 return [AdmoreSDKDeepLink handleUrl:url];
}

@end
