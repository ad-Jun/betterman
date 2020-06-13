//
//  main.m
//  AutoLayoutCellDemo
//
//  Created by zhangshaopeng715@pingan.com.cn on 2020/6/12.
//  Copyright © 2020 胖子的电脑. All rights reserved.
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
