// *******************************************
//  File Name:      main.m       
//  Author:         MrBai
//  Created Date:   2019/11/5 5:24 PM
//    
//  Copyright © 2019 baiqiang
//  All rights reserved
// *******************************************
    

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
