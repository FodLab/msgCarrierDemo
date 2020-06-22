//
//  AppDelegate.m
//  msgCarrierDemo
//
//  Created by fodlab on 2020/6/22.
//  Copyright © 2020 fodlab. All rights reserved.
//

#import "AppDelegate.h"
@import msgCarrier;
#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [msgCarrierManager setTestMode:YES];
    //[msgCarrierManager initWithAppId:@"48f3c864ba3140de9bdd818a18e4e675"];
    [msgCarrierManager initWithAppId:@"84b6f5ebc63f48f4a69252e83b1dc45d"];
    
    HomeViewController *vc = [[HomeViewController alloc] init];
       self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}



@end
