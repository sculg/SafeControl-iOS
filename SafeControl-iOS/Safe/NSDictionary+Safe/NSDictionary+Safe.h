//
//  NSDictionary+Safe.h
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary<__covariant KeyType, __covariant ObjectType> (Safe)

/** 安全存值 */
+ (instancetype)safeDictionaryWithObject:(ObjectType)object forKey:(KeyType <NSCopying>)key;

/** 安全返回id */
- (nullable ObjectType)safeObjectForKey:(KeyType)aKey;

/** 安全返回NSString */
- (nullable NSString *)safeStringForKey:(KeyType)key;

/** 安全返回NSArray */
- (nullable NSArray *)safeArrayForKey:(KeyType)key;

/** 安全返回NSDictionary */
- (nullable NSDictionary *)safeDictionaryForKey:(KeyType)key;
@end

NS_ASSUME_NONNULL_END
