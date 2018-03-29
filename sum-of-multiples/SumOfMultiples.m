#import "SumOfMultiples.h"

@implementation SumOfMultiples

+ (NSNumber *)toLimit:(NSNumber *)limit inMultiples:(NSArray<NSNumber *> *)multiples {
    NSInteger sum = 0;
    NSMutableSet *set = [NSMutableSet set];
    for (NSNumber *number in multiples) {
        if ([number isEqual:@0]) {
            continue;
        }
        for (NSInteger i = 1; i < [limit integerValue]; ++i) {
            if (i * [number integerValue] < [limit integerValue]) {
                [set addObject:@(i * [number integerValue])];
            }
        }
    }
    for (NSNumber *number in set) {
        sum += [number integerValue];
    }
    return @(sum);
}

@end
