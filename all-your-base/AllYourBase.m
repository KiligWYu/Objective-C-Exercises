#import "AllYourBase.h"

@implementation AllYourBase

+ (NSArray *)outputDigitsForInputBase:(NSInteger)inputBase inputDigits:(NSArray *)inputDigits outputBase:(NSInteger)outputBase {
    NSAssert(inputBase > 1, @"inputBase > 1");
    NSAssert(outputBase > 1, @"outputBase > 1");
    
    NSInteger decimalNumber = 0;
    for (NSInteger i = 0; i < inputDigits.count; ++i) {
        NSInteger inputDigit = [inputDigits[i] integerValue];
        NSAssert(inputDigit < inputBase && inputDigit >= 0, @"inputDigit > 0 && inputDigit < inputBase");
        decimalNumber += (inputDigit * pow(inputBase, inputDigits.count - i - 1));
    }
    
    NSInteger index = 0;
    for (; ; ++index) {
        if (pow(outputBase, index) > decimalNumber) {
            index--;
            break;
        }
    }
    
    NSMutableArray *result = [NSMutableArray array];
    while (index >= 0) {
        NSInteger value = pow(outputBase, index);
        NSInteger digit = 0;
        if (value > decimalNumber) {
            value = 0;
        } else {
            digit = decimalNumber / value;
        }
        [result addObject:@(digit)];
        decimalNumber -= (value * digit);
        index--;
    }
    
    return result;
}

@end
