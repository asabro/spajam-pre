//
//  Question.m
//  SpajamPre
//
//  Created by 村上 晋太郎 on 2014/07/04.
//  Copyright (c) 2014年 村上 晋太郎. All rights reserved.
//

#import "Question.h"
@interface Question()
@end

@implementation Question
- (id)initWithDictionary:(NSDictionary *)dictionary {
  self = [super init];
  if (self) {
    _dictionary = dictionary;
  }
  return self;
}
@end
