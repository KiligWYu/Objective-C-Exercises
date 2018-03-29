#import "Luhn.h"

@implementation Luhn

- (instancetype)initWithString:(NSString *)input {
    if (self = [super init]) {
        if ([[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[0-9 ]{1,}$"] evaluateWithObject:input]) {
            input = [input stringByReplacingOccurrencesOfString:@" " withString:@""];
            if (input.length <= 1) {
                self.isValid = false;
            } else {
                __block NSInteger sum = 0;
                [input enumerateSubstringsInRange:NSMakeRange(0, input.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
                    if ((input.length % 2 == 0 && substringRange.location % 2 == 0)
                        || (input.length % 2 == 1 && substringRange.location % 2 == 1)) {
                        if ([substring integerValue] * 2 > 9) {
                            sum += ([substring integerValue] * 2 - 9);
                        } else {
                            sum += ([substring integerValue] * 2);
                        }
                    } else {
                        sum += [substring integerValue];
                    }
                }];
                self.isValid = sum % 10 == 0 ? YES : NO;
            }
        } else {
            self.isValid = NO;
        }
    }
    return self;
}

@end
