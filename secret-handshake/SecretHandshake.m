#import "SecretHandshake.h"

@implementation SecretHandshake

- (instancetype)initWithNumber:(NSInteger)number {
    if (self = [super init]) {
        NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *result = [NSMutableArray array];
        do {
            [array addObject:[@(number % 2) stringValue]];
            number = number / 2;
        } while (number > 0);
        NSString *binaryString = [[[array reverseObjectEnumerator] allObjects] componentsJoinedByString:@""];
        NSInteger binary = [binaryString integerValue];
        BOOL reverse = NO;
        if (binary >= 10000) {
            reverse = YES;
            binary = binary % 10000;
        }
        if (binary >= 1000) {
            binary = binary % 1000;
            [result insertObject:@"jump" atIndex:0];
        }
        if (binary >= 100) {
            binary = binary % 100;
            [result insertObject:@"close your eyes" atIndex:0];
        }
        if (binary >= 10) {
            binary = binary % 10;
            [result insertObject:@"double blink" atIndex:0];
        }
        if (binary == 1) {
            [result insertObject:@"wink" atIndex:0];
        }
        if (reverse) {
            self.commands = [NSMutableArray arrayWithArray:[[result reverseObjectEnumerator] allObjects]];
        } else {
            self.commands = result;
        }
    }
    return self;
}

@end
