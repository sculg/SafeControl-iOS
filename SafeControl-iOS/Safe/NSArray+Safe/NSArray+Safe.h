//
//  NSArray+Safe.h
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray<ObjectType>(Safe)

/** 安全地创建NSArray */
+ (instancetype)safeArrayWithObject:(ObjectType)object;

/** 安全地取出Obejct */
- (nullable ObjectType)safeObjectAtIndex:(NSUInteger)index;

/** 安全地取出String */
- (nullable NSString *)safeStringAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
