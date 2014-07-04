//
//  Questions.h
//  SpajamPre
//
//  Created by 村上 晋太郎 on 2014/07/04.
//  Copyright (c) 2014年 村上 晋太郎. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kText @"text"
#define kUsername @"username"
#define kPosNumber @"posNumber"
#define kNegNumber @"negNumber"
#define kAnswered @"answered"
#define kComments @"comments"
#define kCreatedAt @"createdAt"

@interface NSMutableArray(Questions)
- (void)load;
@end
