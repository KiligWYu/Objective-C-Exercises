#import "RomanNumerals.h"

@implementation RomanNumerals

+ (NSString *)romanNumeralsForValue:(NSInteger)value {
    if (value < 1 || value >= 4000) {
        return @"";
    }
    NSMutableString *string = [NSMutableString string];
    NSArray *array = @[ @"M", @1000,
                        @"D", @500,
                        @"C", @100,
                        @"L", @50,
                        @"X", @10,
                        @"V", @5,
                        @"I", @1 ];
    NSInteger index = 0;
    while (value > 0) {
        NSInteger indexValue = [array[index + 1] integerValue];
        if (value / indexValue > 0) {
            if (value / indexValue == 4) {
                [string appendFormat:@"%@%@", array[index], array[index - 2]];
                value -= (value / indexValue * indexValue);
            } else if (index + 3 < array.count && value / [array[index + 3] integerValue] == 9) {
                [string appendFormat:@"%@%@", array[index + 2], array[index - 2]];
                value -= (value / [array[index + 3] integerValue] * [array[index + 3] integerValue]);
            } else {
                for (NSInteger i = 0; i < value / indexValue; ++i) {
                    [string appendString:array[index]];
                }
                value -= (value / indexValue * indexValue);
            }
        }
        index += 2;
    }
    return string;
}

@end
