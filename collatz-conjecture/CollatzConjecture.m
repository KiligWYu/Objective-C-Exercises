#import "CollatzConjecture.h"

@implementation CollatzConjecture

+ (NSInteger)stepsForNumber:(NSInteger)number {
    if (number <= 0) {
        return NSNotFound;
    }
    
    NSInteger steps = 0;
    while (number != 1) {
        if (number % 2 == 0) {
            number /= 2;
        } else {
            number = number * 3 + 1;
        }
        steps++;
    }
    
    return steps;
}

@end
