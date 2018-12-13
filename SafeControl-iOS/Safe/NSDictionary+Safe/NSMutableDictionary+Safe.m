//
//  NSMutableDictionary+Safe.m
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import "NSMutableDictionary+Safe.h"

@implementation NSMutableDictionary (Safe)

/** 安全存值 */
- (void)safeSetObject:(id)anObject forKey:(id <NSCopying>)aKey {
    if (![self isKindOfClass:[NSMutableDictionary class]]) {
        return ;
    } else if (anObject && aKey && ![anObject isKindOfClass:[NSNull class]]) {
        [self setObject:anObject forKey:aKey];
    }
}

/** 安全删除 */
- (void)safeRemoveObjectForKey:(id)aKey {
    if (![self isKindOfClass:[NSMutableDictionary class]]) {
        return ;
    } else if (aKey) {
        [self removeObjectForKey:aKey];
    }
}

/** Dictionary add otherDictionary */
- (void)safeAddEntriesFromDictionary:(NSDictionary *)otherDictionary {
    if ([self isKindOfClass:[NSMutableDictionary class]] &&
        [otherDictionary isKindOfClass:[NSDictionary class]]) {
        [self addEntriesFromDictionary:otherDictionary];
    }
}

@end
