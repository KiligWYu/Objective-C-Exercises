#import "Acronym.h"

@implementation Acronym

+ (NSString *)abbreviate:(NSString *)input {
    input = [input stringByReplacingOccurrencesOfString:@"[^a-zA-Z ]" withString:@" " options:NSRegularExpressionSearch range:NSMakeRange(0, input.length)];
    __block NSString *result = @"";
    [input enumerateSubstringsInRange:NSMakeRange(0, input.length) options:NSStringEnumerationByWords usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        result = [result stringByAppendingString:[[substring substringToIndex:1] uppercaseString]];
        for (NSInteger i = 1; i < substring.length; ++i) {
            NSString *subStr = [substring substringWithRange:NSMakeRange(i, 1)];
            NSString *subStr2 = [substring substringWithRange:NSMakeRange(i - 1, 1)];
            if ([subStr isEqualToString:[subStr uppercaseString]]
                && [subStr2 isEqualToString:[subStr2 lowercaseString]]) {
                result = [result stringByAppendingString:subStr];
            }
        }
    }];
    return result;
}

@end
