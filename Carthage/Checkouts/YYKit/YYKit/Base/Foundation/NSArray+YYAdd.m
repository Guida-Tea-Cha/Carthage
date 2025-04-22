//
//  NSArray+YYAdd.m
//  YYKit <https://github.com/ibireme/YYKit>
//
//  Created by ibireme on 13/4/4.
//  Copyright (c) 2015 ibireme.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "NSArray+YYAdd.h"
#import "YYKitMacro.h"
#import "NSData+YYAdd.h"
#import "NSObject+YYAdd.h"
#import <objc/runtime.h>

YYSYNTH_DUMMY_CLASS(NSArray_YYAdd)


@implementation NSArray (YYAdd)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("__NSArrayI") swizzleInstanceMethod:@selector(objectAtIndex:) with:@selector(objectAtVerifiedIndex:)];
        [objc_getClass("__NSArrayI") swizzleInstanceMethod:@selector(objectAtIndexedSubscript:) with:@selector(objectAtVerifiedIndexedSubscript:)];
    });
}

+ (NSArray *)arrayWithPlistData:(NSData *)plist {
    if (!plist) return nil;
    NSArray *array = [NSPropertyListSerialization propertyListWithData:plist options:NSPropertyListImmutable format:NULL error:NULL];
    if ([array isKindOfClass:[NSArray class]]) return array;
    return nil;
}

+ (NSArray *)arrayWithPlistString:(NSString *)plist {
    if (!plist) return nil;
    NSData *data = [plist dataUsingEncoding:NSUTF8StringEncoding];
    return [self arrayWithPlistData:data];
}

- (NSData *)plistData {
    return [NSPropertyListSerialization dataWithPropertyList:self format:NSPropertyListBinaryFormat_v1_0 options:kNilOptions error:NULL];
}

- (NSString *)plistString {
    NSData *xmlData = [NSPropertyListSerialization dataWithPropertyList:self format:NSPropertyListXMLFormat_v1_0 options:kNilOptions error:NULL];
    if (xmlData) return xmlData.utf8String;
    return nil;
}

- (id)randomObject {
    if (self.count) {
        return self[arc4random_uniform((u_int32_t)self.count)];
    }
    return nil;
}

- (id)objectOrNilAtIndex:(NSUInteger)index {
    return index < self.count ? self[index] : nil;
}

- (NSString *)jsonStringEncoded {
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *error = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
        NSString *json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        if (!error) return json;
    }
    return nil;
}

- (NSString *)jsonPrettyStringEncoded {
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *error = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
        NSString *json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        if (!error) return json;
    }
    return nil;
}

- (id)objectAtVerifiedIndex:(NSUInteger)index {
    if (index < self.count) {
        return [self objectAtVerifiedIndex:index];
    }
    return nil;
}

- (id)objectAtVerifiedIndexedSubscript:(NSUInteger)idx {
    if (idx < self.count) {
        return [self objectAtVerifiedIndexedSubscript:idx];
    }
    return nil;
}

@end



@implementation NSMutableArray (YYAdd)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(objectAtIndex:) with:@selector(objectAtVerifiedIndex:)];
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(objectAtIndexedSubscript:) with:@selector(objectAtVerifiedIndexedSubscript:)];
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(addObject:) with:@selector(addVerifiedObject:)];
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(setObject:atIndexedSubscript:) with:@selector(setVerifiedObject:atVerifiedIndexedSubscript:)];
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(insertObject:atIndex:) with:@selector(insertVerifiedObject:atVerifiedIndex:)];
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(replaceObjectAtIndex:withObject:) with:@selector(replaceObjectAtVerifiedIndex:withVerifiedObject:)];
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(removeObjectAtIndex:) with:@selector(removeObjectAtVerifiedIndex:)];
        [objc_getClass("__NSArrayM") swizzleInstanceMethod:@selector(removeObjectsInRange:) with:@selector(removeObjectsInVerifiedRange:)];
    });
}

+ (NSMutableArray *)arrayWithPlistData:(NSData *)plist {
    if (!plist) return nil;
    NSMutableArray *array = [NSPropertyListSerialization propertyListWithData:plist options:NSPropertyListMutableContainersAndLeaves format:NULL error:NULL];
    if ([array isKindOfClass:[NSMutableArray class]]) return array;
    return nil;
}

+ (NSMutableArray *)arrayWithPlistString:(NSString *)plist {
    if (!plist) return nil;
    NSData *data = [plist dataUsingEncoding:NSUTF8StringEncoding];
    return [self arrayWithPlistData:data];
}

- (void)removeFirstObject {
    if (self.count) {
        [self removeObjectAtIndex:0];
    }
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
- (void)removeLastObject {
    if (self.count) {
        [self removeObjectAtIndex:self.count - 1];
    }
}

#pragma clang diagnostic pop


- (id)popFirstObject {
    id obj = nil;
    if (self.count) {
        obj = self.firstObject;
        [self removeFirstObject];
    }
    return obj;
}

- (id)popLastObject {
    id obj = nil;
    if (self.count) {
        obj = self.lastObject;
        [self removeLastObject];
    }
    return obj;
}

- (void)appendObject:(id)anObject {
    [self addObject:anObject];
}

- (void)prependObject:(id)anObject {
    [self insertObject:anObject atIndex:0];
}

- (void)appendObjects:(NSArray *)objects {
    if (!objects) return;
    [self addObjectsFromArray:objects];
}

- (void)prependObjects:(NSArray *)objects {
    if (!objects) return;
    NSUInteger i = 0;
    for (id obj in objects) {
        [self insertObject:obj atIndex:i++];
    }
}

- (void)insertObjects:(NSArray *)objects atIndex:(NSUInteger)index {
    NSUInteger i = index;
    for (id obj in objects) {
        [self insertObject:obj atIndex:i++];
    }
}

- (void)reverse {
    NSUInteger count = self.count;
    int mid = floor(count / 2.0);
    for (NSUInteger i = 0; i < mid; i++) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:(count - (i + 1))];
    }
}

- (void)shuffle {
    for (NSUInteger i = self.count; i > 1; i--) {
        [self exchangeObjectAtIndex:(i - 1)
                  withObjectAtIndex:arc4random_uniform((u_int32_t)i)];
    }
}

- (id)objectAtVerifiedIndex:(NSUInteger)index {
    if (index < self.count) {
        return [self objectAtVerifiedIndex:index];
    }
    return nil;
}

- (id)objectAtVerifiedIndexedSubscript:(NSUInteger)idx {
    if (idx < self.count) {
        return [self objectAtVerifiedIndexedSubscript:idx];
    }
    return nil;
}

- (void)addVerifiedObject:(id)anObject {
    if (anObject == nil) {
        return;
    }
    [self addVerifiedObject:anObject];
}

- (void)setVerifiedObject:(id)obj atVerifiedIndexedSubscript:(NSUInteger)idx {
    if (obj == nil) {
        return;
    }
    if (idx > self.count) {
        return;
    }
    [self setVerifiedObject:obj atVerifiedIndexedSubscript:idx];
}

- (void)insertVerifiedObject:(id)anObject atVerifiedIndex:(NSUInteger)index {
    if (anObject == nil) {
        return;
    }
    if (index > self.count) {
        return;
    }
    [self insertVerifiedObject:anObject atVerifiedIndex:index];
}

- (void)replaceObjectAtVerifiedIndex:(NSUInteger)index withVerifiedObject:(id)anObject {
    if (index > (self.count - 1)) {
        return;
    }
    if (anObject == nil) {
        return;
    }
    [self replaceObjectAtVerifiedIndex:index withVerifiedObject:anObject];
}

- (void)removeObjectAtVerifiedIndex:(NSUInteger)index {
    if (index < self.count) {
        [self removeObjectAtVerifiedIndex:index];
    }
}

- (void)removeObjectsInVerifiedRange:(NSRange)range {
    if (range.location > self.count) {
        return;
    }
    if (range.length > self.count) {
        return;
    }
    if ((range.location + range.length) > self.count) {
        return;
    }
    [self removeObjectsInVerifiedRange:range];
}

@end
