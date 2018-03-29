#import "Pangram.h"

@implementation Pangram

+ (BOOL)isPangram:(NSString *)string {
    __block NSString *lowercaseString = [string lowercaseString];
    NSString *str = @"abcdefghijklmnopqrstuvwxyz";
    __block BOOL isPangram = YES;
    [str enumerateSubstringsInRange:NSMakeRange(0, str.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        if (![lowercaseString containsString:substring]) {
            isPangram = NO;
            *stop = YES;
        }
    }];
    return isPangram;
}

@end
