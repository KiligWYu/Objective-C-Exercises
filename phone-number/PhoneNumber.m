#import "PhoneNumber.h"

@implementation PhoneNumber

- (instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        self.number = @"0000000000";
        string = [string stringByReplacingOccurrencesOfString:@"\\D" withString:@"" options:(NSRegularExpressionSearch) range:NSMakeRange(0, string.length)];
        if (string.length == 10) {
            self.number = string;
        } else if (string.length == 11 && [string hasPrefix:@"1"]) {
            self.number = [string substringFromIndex:1];
        }
        self.areaCode = [self.number substringToIndex:3];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"(%@) %@-%@", [self.number substringToIndex:3], [self.number substringWithRange:NSMakeRange(3, 3)], [self.number substringFromIndex:6]];
}

@end
