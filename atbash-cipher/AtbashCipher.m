#import "AtbashCipher.h"

static NSString *const plain = @"abcdefghijklmnopqrstuvwxyz";
static NSString *const cipher = @"zyxwvutsrqponmlkjihgfedcba";

@implementation AtbashCipher

+ (NSString *)encode:(NSString *)input {
    NSString *result = @"";
    input = [input stringByReplacingOccurrencesOfString:@"\\W" withString:@"" options:NSRegularExpressionSearch range:NSMakeRange(0, input.length)];
    input = [input lowercaseString];
    for (NSInteger i = 0; i < input.length; ++i) {
        NSString *subStr = [input substringWithRange:NSMakeRange(i, 1)];
        NSInteger index = [plain rangeOfString:subStr].location;
        if (index != NSNotFound) {
            result = [result stringByAppendingFormat:@"%c", [cipher characterAtIndex:index]];
        } else {
            result = [result stringByAppendingString:subStr];
        }
        if ((i + 1) % 5 == 0 && i != input.length - 1) {
            result = [result stringByAppendingString:@" "];
        }
    }
    
    return result;
}

@end
