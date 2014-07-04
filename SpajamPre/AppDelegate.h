//
//  AppDelegate.h
//  SpajamPre
//
//  Created by 村上 晋太郎 on 2014/07/02.
//  Copyright (c) 2014年 村上 晋太郎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AZSocketIO/AZSocketIO.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) AZSocketIO *socketIO;
+(AZSocketIO *) socketIO;
@end
