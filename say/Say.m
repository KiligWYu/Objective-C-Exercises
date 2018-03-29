#import "Say.h"

@implementation Say

+ (NSString *)say:(long)number {
    if (number < 0 || number >= 1000000000000) {
        return nil;
    }
    if (number == 0) {
        return @"zero";
    }
    NSMutableString *string = [NSMutableString string];
    if (number / 1000000000 > 0) {
        [string appendFormat:@"%@ billion", [self sayLessThanOneThousand:number / 1000000000]];
        number -= (number / 1000000000 * 1000000000);
    }
    if (number / 1000000 > 0) {
        [string appendFormat:@" %@ million", [self sayLessThanOneThousand:number / 1000000]];
        number -= (number / 1000000 * 1000000);
    }
    if (number / 1000 > 0) {
        [string appendFormat:@" %@ thousand", [self sayLessThanOneThousand:number / 1000]];
        number -= (number / 1000 * 1000);
    }
    [string appendFormat:@" %@", [self sayLessThanOneThousand:number]];
    [string replaceOccurrencesOfString:@"  " withString:@" " options:NSCaseInsensitiveSearch range:NSMakeRange(0, string.length)];
    return [string stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];
}

+ (NSString *)sayLessThanOneThousand:(NSInteger)number {
    NSMutableString *string = [NSMutableString string];
    if (number > 99) {
        [string appendFormat:@" %@ hundred", dict()[@(number / 100)]];
        number -= (number / 100 * 100);
    }
    if (number > 19) {
        [string appendFormat:@" %@", dict()[@(number / 10 * 10)]];
        if (number % 10 > 0) {
            [string appendFormat:@"-%@", dict()[@(number % 10)]];
        }
    } else {
        if (number != 0) {
            [string appendFormat:@" %@", dict()[@(number)]];
        }
    }
    return string;
}

NSDictionary *dict(void) {
    return @{
             @1 : @"one",
             @2 : @"two",
             @3 : @"three",
             @4 : @"four",
             @5 : @"five",
             @6 : @"six",
             @7 : @"seven",
             @8 : @"eight",
             @9 : @"nine",
             @10 : @"ten",
             @11 : @"eleven",
             @12 : @"twelve",
             @13 : @"thirteen",
             @14 : @"fourteen",
             @15 : @"fifteen",
             @16 : @"sixteen",
             @17 : @"seventeen",
             @18 : @"eighteen",
             @19 : @"nineteen",
             @20 : @"twenty",
             @30 : @"thirty",
             @40 : @"forty",
             @50 : @"fifty",
             @60 : @"sixty",
             @70 : @"seventy",
             @80 : @"eighty",
             @90 : @"ninety",
             };
}

@end
