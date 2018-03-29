#import "DifferenceOfSquares.h"

@implementation DifferenceOfSquares

- (instancetype)initWithMax:(NSInteger)max {
    if (self = [super init]) {
        self.squareOfSums = (max * (1 + max) / 2) * (max * (1 + max) / 2);
        self.sumOfSquares = max * (max + 1) * (max * 2 + 1) / 6;
        self.differenceOfSquares = self.squareOfSums - self.sumOfSquares;
    }
    return self;
}

@end
