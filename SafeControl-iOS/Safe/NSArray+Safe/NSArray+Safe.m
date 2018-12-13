//
//  NSArray+Safe.m
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import "NSArray+Safe.h"

@implementation NSArray (Safe)

/** 安全地创建NSArray */
+ (instancetype)safeArrayWithObject:(id)object {
    
    if (object) {
        return [self arrayWithObject:object];
    } else {
        return [self array];
    }
}

/** 安全地取出Obejct */
- (id)safeObjectAtIndex:(NSUInteger)index {
    
    if (![self isKindOfClass:[NSArray class]]) {
        return nil;
    } else if (index >= self.count) {
        return nil;
    } else {
        return [self objectAtIndex:index];
    }
}

/** 安全地取出String */
- (nullable NSString *)safeStringAtIndex:(NSUInteger)index {
    
    id value = [self safeObjectAtIndex:index];
    if (value == nil || value == [NSNull null]){
        return nil;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return (NSString*)value;
    } else if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    } else {
        return nil;
    }
}

@end
