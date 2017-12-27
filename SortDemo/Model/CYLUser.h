//
//  CYLUser.h
//  SortDemo
//
//  Created by ShiPanpan on 2017/12/25.
//  Copyright © 2017年 ShiPanpan. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, CYLSex) {
    CYLSexMan,
    CYLSexWomen
};


@interface CYLUser : NSObject <NSCopying>

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, assign) NSInteger age;
@property (nonatomic, readonly, assign) CYLSex sex;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(CYLSex)sex;
+ (instancetype)userWithName:(NSString *)name age:(NSInteger)age sex:(CYLSex)sex;
- (void)addFriend:(CYLUser *)user;
- (void)removeFriend:(CYLUser *)user;

@end
