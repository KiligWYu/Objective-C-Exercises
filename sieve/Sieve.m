#import "Sieve.h"

@implementation Sieve

+ (NSArray *)primesUpTo:(NSInteger)limit {
    NSMutableArray *result = [NSMutableArray array];
    for (NSInteger i = 2; i <= limit; ++i) {
        [result addObject:@(i)];
    }
    
    NSInteger prime = 2;
    NSInteger index = 0;
    while ([[result lastObject] integerValue] >= prime * prime) {
        for (NSInteger i = prime; i <= [result.lastObject integerValue] / prime; ++i) {
            [result removeObject:@(i * prime)];
        }
        index++;
        prime = [result[index] integerValue];
    }
    
    return result;
}

@end
