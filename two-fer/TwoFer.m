#import "TwoFer.h"

@implementation TwoFer

+ (NSString *)twoFerWithName:(NSString *)name {
    return [NSString stringWithFormat:@"One for %@, one for me.", name.length > 0 ? name : @"you"];
}

@end
