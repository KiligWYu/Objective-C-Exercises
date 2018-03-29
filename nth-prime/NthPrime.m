#import "NthPrime.h"

@implementation NthPrime

+ (int)primeNum:(int)number {
    if (number == 0) {
        return 0;
    }
    if (number == 1) {
        return 2;
    }
    if (number == 2) {
        return 3;
    }
    int index = 2;
    int result = 0;
    for (int i = 5; ; i += 2) {
        BOOL isPrime = YES;
        for (int j = 3; j < i; j +=2) {
            if (i % j == 0) {
                isPrime = NO;
                break;
            }
        }
        if (isPrime) {
            result = i;
            index++;
            if (index == number) {
                break;
            }
        }
    }
    return result;
}

@end
