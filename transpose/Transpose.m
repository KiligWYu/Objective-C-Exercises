#import "Transpose.h"

@implementation Transpose

+ (NSArray *)transpose:(NSArray *)array {
    NSInteger length = 0;
    for (NSString *sunstring in array) {
        length = MAX(length, sunstring.length);
    }
    NSMutableArray *result = [NSMutableArray array];
    for (NSInteger i = 0; i < length; ++i) {
        NSString *string = @"";
        for (NSInteger j = 0; j < array.count; ++j) {
            NSString *obj = array[j];
            if (obj.length > i) {
                string = [string stringByAppendingString:[obj substringWithRange:NSMakeRange(i, 1)]];
            } else {
                string = [string stringByAppendingString:@" "];
            }
        }
        while ([string hasSuffix:@" "]) {
            string = [string substringToIndex:string.length - 1];
        }
        [result addObject:string];
    }
    return result;
}

@end
