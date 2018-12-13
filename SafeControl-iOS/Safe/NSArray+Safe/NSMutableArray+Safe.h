//
//  NSMutableArray+Safe.h
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray<ObjectType> (Safe)

/** 安全地添加 Object */
- (void)safeAddObject:(ObjectType)object;

/** 安全地添加 NSArray */
- (void)safeAddObjectsFromArray:(NSArray<ObjectType> *)otherArray;

/** 安全地删除 Object */
- (void)safeRemoveObjectAtIndex:(NSUInteger)index;

/** 安全地插入 Object */
- (void)safeInsertObject:(ObjectType)anObject atIndex:(NSUInteger)index;

/** 安全地插入 Objects */
- (void)safeInsertObjects:(NSArray<ObjectType> *)objects atIndexes:(NSIndexSet *)indexes;

/** 安全地替换 Object */
- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(ObjectType)anObject;

@end

NS_ASSUME_NONNULL_END
