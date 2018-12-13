//
//  NSDictionary+Safe.m
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import "NSDictionary+Safe.h"

@implementation NSDictionary (Safe)

/** 安全存值 */
+ (instancetype)safeDictionaryWithObject:(id)object forKey:(id <NSCopying>)key {
    if (object && key) {
        return [self dictionaryWithObject:object forKey:key];
    }else {
        return [self dictionary];
    }
}

/** 安全返回id */
- (nullable id)safeObjectForKey:(id)aKey {
    if (![self isKindOfClass:[NSDictionary class]]) {
        return nil;
    } else if (aKey) {
        return [self objectForKey:aKey];
    } else {
        return nil;
    }
}

/** 安全返回NSString */
- (nullable NSString *)safeStringForKey:(id)key {
    id value = [self safeObjectForKey:key];
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

/** 安全返回NSArray */
- (nullable NSArray *)safeArrayForKey:(id)key {
    id value = [self safeObjectForKey:key];
    if (value == nil || value == [NSNull null]){
        return nil;
    }
    if (![value isKindOfClass:[NSArray class]]) {
        return nil;
    } else {
        return (NSArray *)value;
    }
}

/** 安全返回NSDictionary */
- (nullable NSDictionary *)safeDictionaryForKey:(id)key {
    id value = [self safeObjectForKey:key];
    if (value == nil || value == [NSNull null]){
        return nil;
    }
    if (![value isKindOfClass:[NSDictionary class]]) {
        return nil;
    } else {
        return (NSDictionary *)value;
    }
}

@end
