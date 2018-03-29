#import "Bob.h"

@implementation Bob

- (NSString *)hey:(NSString *)input {
    input = [input stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];
    if (input.length == 0) {
        return @"Fine. Be that way!";
    }
    if (isYelling(input)) {
        return @"Whoa, chill out!";
    }
    if (isAsking(input)) {
        return @"Sure.";
    }
    return @"Whatever.";
}

BOOL isYelling(NSString *input) {
    if ([[input uppercaseString] isEqualToString:input]
        && ![[input lowercaseString] isEqualToString:input]) {
        return YES;
    }
    return NO;
}

BOOL isAsking(NSString *input) {
    if ([input hasSuffix:@"?"]) {
        return YES;
    }
    return NO;
}

@end
