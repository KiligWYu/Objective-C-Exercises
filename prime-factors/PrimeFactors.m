#import "PrimeFactors.h"

@implementation PrimeFactors

+ (NSArray *)factorsForInteger:(NSInteger)number {
    NSMutableArray *result = [NSMutableArray array];
    [self factors:result witnInput:number];
    return result;
}

+ (void)factors:(NSMutableArray *)result witnInput:(NSInteger)number {
    for (NSInteger i = 2; i <= number; ++i) {
        if (number % i == 0) {
            [result addObject:@(i)];
            [self factors:result witnInput:number / i];
            break;
        }
    }
}

@end
