//
//  NSMutableArray+Safe.m
//  SafeControl
//
//  Created by lg on 2018/12/10.
//  Copyright © 2018 lg. All rights reserved.
//

#import "NSMutableArray+Safe.h"

@implementation NSMutableArray (Safe)

/** 安全地添加 Object */
- (void)safeAddObject:(id)object {
    if (![self isKindOfClass:[NSMutableArray class]]) {
        return;
    } else if (object) {
        [self addObject:object];
    }
}

/** 安全地添加 NSArray */
- (void)safeAddObjectsFromArray:(NSArray *)otherArray {
    if (![self isKindOfClass:[NSMutableArray class]]) {
        return ;
    } else if (![otherArray isKindOfClass:[NSArray class]]) {
        return ;
    } else {
        [self addObjectsFromArray:otherArray];
    }
}

/** 安全地删除 Object */
- (void)safeRemoveObjectAtIndex:(NSUInteger)index {
    if (![self isKindOfClass:[NSMutableArray class]]) {
        return ;
    } else if (index >= self.count) {
        return ;
    } else {
        [self removeObjectAtIndex:index];
    }
}

/** 安全地插入 Object */
- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index {
    if (![self isKindOfClass:[NSMutableArray class]]) {
        return ;
    } else if (!anObject) {
        return ;
    } else if (index >= self.count) {
        return ;
    } else {
        [self insertObject:anObject atIndex:index];
    }
}

/** 安全地插入 Objects */
- (void)safeInsertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes {
    if (![self isKindOfClass:[NSMutableArray class]]) {
        return ;
    }else if (!objects) {
        return ;
    }else if (!indexes) {
        return ;
    }else if (indexes.count != objects.count ||
              indexes.firstIndex >= objects.count ||
              indexes.lastIndex >= objects.count) {
        return ;
    } else {
         [self insertObjects:objects atIndexes:indexes];
    }
}

/** 安全地替换 Object */
- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    if (![self isKindOfClass:[NSMutableArray class]]) {
        return ;
    }else if (!anObject) {
        return ;
    }else if (index >= self.count) {
        return ;
    } else {
        [self replaceObjectAtIndex:index withObject:anObject];
    }
}

@end
