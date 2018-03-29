
#import "HelloWorld.h"

@implementation HelloWorld

- (NSString *)hello:(NSString *)input {
    return [NSString stringWithFormat:@"Hello, %@!", input.length > 0 ? input : @"World"];
}

@end
