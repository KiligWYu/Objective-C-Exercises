#import "BracketPushExample.h"

@implementation BracketPushExample

+ (BOOL)validateBracketPairingAndNestingInString:(NSString *)string {
    __block NSMutableArray *array = [NSMutableArray array];
    __block BOOL result = YES;
    [string enumerateSubstringsInRange:NSMakeRange(0, string.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        if ([substring isEqualToString:@"["]
            || [substring isEqualToString:@"{"]
            || [substring isEqualToString:@"("]) {
            [array addObject:substring];
        }
        if ([substring isEqualToString:@"]"]
            || [substring isEqualToString:@"}"]
            || [substring isEqualToString:@")"]) {
            if (([substring isEqualToString:@"]"] && [[array lastObject] isEqualToString:@"["])
                || ([substring isEqualToString:@"}"] && [[array lastObject] isEqualToString:@"{"])
                || ([substring isEqualToString:@")"] && [[array lastObject] isEqualToString:@"("])) {
                [array removeLastObject];
            } else {
                result = NO;
                *stop = YES;
            }
        }
    }];
    return result && (array.count == 0);
}

@end
