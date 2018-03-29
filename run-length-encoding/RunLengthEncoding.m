#import "RunLengthEncoding.h"

@implementation RunLengthEncoding

+ (NSString *)encode:(NSString *)input {
    __block NSMutableString *result = [NSMutableString string];
    __block NSString *string = @"";
    __block NSInteger repeatCount = 0;
    [input enumerateSubstringsInRange:NSMakeRange(0, input.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        if (substringRange.location == 0 || [string isEqualToString:substring]) {
            repeatCount++;
        } else {
            repeatCount == 1 ? [result appendString:string] : [result appendFormat:@"%ld%@", (long)repeatCount, string];
            repeatCount = 1;
        }
        string = substring;
        if (substringRange.location == input.length - 1) {
            repeatCount == 1 ? [result appendString:string] : [result appendFormat:@"%ld%@", (long)repeatCount, string];
        }
    }];
    return result;
}

+ (NSString *)decode:(NSString *)input {
    __block NSString *number = @"";
    __block NSMutableString *result = [NSMutableString string];
    [input enumerateSubstringsInRange:NSMakeRange(0, input.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        if (isdigit([substring characterAtIndex:0])) {
            number = [number stringByAppendingString:substring];
        } else {
            if (number.length > 0) {
                for (NSInteger i = 0; i < [number integerValue]; ++i) {
                    [result appendString:substring];
                }
            } else {
                [result appendString:substring];
            }
            number = @"";
        }
    }];
    return result;
}

@end
