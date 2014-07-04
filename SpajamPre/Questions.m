//
//  Questions.m
//  SpajamPre
//
//  Created by 村上 晋太郎 on 2014/07/04.
//  Copyright (c) 2014年 村上 晋太郎. All rights reserved.
//

#import "Questions.h"
#import "Question.h"

@implementation NSMutableArray(Questions)
- (void)load
{
  NSArray * array =
  @[
    @{kText: @"こんにちは",
      kUsername: @"もやし",
      kPosNumber: @100,
      kNegNumber: @200,
      kAnswered: @NO,
      kComments: @[],
      kCreatedAt: @"2012-12-12",
      },
    @{kText: @"おはよう",
      kUsername: @"ふしみ",
      kPosNumber: @300,
      kNegNumber: @200,
      kAnswered: @NO,
      kComments: @[],
      kCreatedAt: @"2014-03-31",
      },
    @{kText: @"おやすみ",
      kUsername: @"むなかた",
      kPosNumber: @500,
      kNegNumber: @100,
      kAnswered: @YES,
      kComments: @[],
      kCreatedAt: @"2013-08-01",
      },
  ];
  
  [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
    [self addObject:obj];
  }];
}


@end
