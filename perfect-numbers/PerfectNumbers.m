#import "PerfectNumbers.h"

@implementation NumberClassifier

- (instancetype)initWithNumber:(NSInteger)number {
    if (self = [super init]) {
        NSMutableSet *set = [NSMutableSet set];
        for (NSInteger i = 2; i < number; ++i) {
            if (number % i == 0) {
                [set addObject:@(i)];
            }
        }
        NSInteger sum = 1;
        for (NSNumber *number in set) {
            sum += [number integerValue];
        }
        if (sum == number) {
            self.classification = NumberClassificationPerfect;
        } else if (sum > number) {
            self.classification = NumberClassificationAbundant;
        } else {
            self.classification = NumberClassificationDeficient;
        }
    }
    return self;
}

@end
