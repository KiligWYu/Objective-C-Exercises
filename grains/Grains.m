#import "Grains.h"

@implementation Grains

- (unsigned long long)grainsAtSquareNumber:(NSInteger)number {
    if (number <= 0 || number > 64) {
        return -1;
    }
    return exp2(number - 1);
}

- (unsigned long long)grainsAtBoard {
    return [self grainsAtSquareNumber:64] * 2 - 1;
}

@end
