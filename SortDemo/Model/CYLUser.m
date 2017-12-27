//
//  CYLUser.m
//  SortDemo
//
//  Created by ShiPanpan on 2017/12/25.
//  Copyright © 2017年 ShiPanpan. All rights reserved.
//

#import "CYLUser.h"
@implementation CYLUser {
    NSMutableSet *_friends;
}

- (void)setName:(NSString *)name {
    _name = [name copy];
}

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(CYLSex)sex {
    if (self = [super init]) {
        _name = [name copy];
        _age = age;
        _sex = sex;
        _friends = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void)addFriend:(CYLUser *)user {
    [_friends addObject:user];
}

- (void)removeFriend:(CYLUser *)user {
    [_friends removeObject:user];
}

- (id)copyWithZone:(NSZone *)zone {
    CYLUser *copy = [[[self class] allocWithZone:zone]
                     initWithName:_name
                     age:_age
                     sex:_sex];
    copy->_friends = [_friends mutableCopy];
    return copy;
}

- (id)deepCopy {
    CYLUser *copy = [[[self class] alloc] initWithName:_name age:_age sex:_sex];
    copy->_friends = [[NSMutableSet alloc] initWithSet:_friends copyItems:YES];
    return copy;
}

@end
