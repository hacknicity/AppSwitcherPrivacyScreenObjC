//
//  main.m
//  AppSwitcherPrivacyScreenObjC
//
//  Created by Geoff Hackworth on 10/02/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
