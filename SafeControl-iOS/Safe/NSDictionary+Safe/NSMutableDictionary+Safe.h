//
//  NSMutableDictionary+Safe.h
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary<KeyType, ObjectType> (Safe)

/** 安全存值 */
- (void)safeSetObject:(ObjectType)anObject forKey:(KeyType <NSCopying>)aKey;

/** 安全删除 */
- (void)safeRemoveObjectForKey:(KeyType)aKey;

/** Dictionary add otherDictionary */
- (void)safeAddEntriesFromDictionary:(NSDictionary<KeyType, ObjectType> *)otherDictionary;

@end

NS_ASSUME_NONNULL_END
