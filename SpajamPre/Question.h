//
//  Question.h
//  SpajamPre
//
//  Created by 村上 晋太郎 on 2014/07/04.
//  Copyright (c) 2014年 村上 晋太郎. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property (nonatomic, strong) NSString * text;
@property (nonatomic, strong) NSString * username;
@property (nonatomic) NSInteger posNumber;
@property (nonatomic) NSInteger negNumber;
@property (nonatomic) BOOL answered;
@property (nonatomic) BOOL comments;
@property (nonatomic, strong) NSString * createdAt;
@property (nonatomic, strong) NSDictionary * dictionary;
- (id)initWithDictionary:(NSDictionary *)dictionary;
@end
