#import "SublistExample.h"

@implementation SublistExample

+ (SublistKind)classifierForFirstList:(NSArray *)array andSecondList:(NSArray *)secondArray {
    if ([array isEqualToArray:secondArray]) {
        return SublistKindEqual;
    }
    NSArray *largerArray = array.count > secondArray.count ? array : secondArray;
    NSArray *smallerArray = largerArray == array ? secondArray : array;
    for (NSInteger i = 0; i <= largerArray.count - smallerArray.count; ++i) {
        NSArray *subArray = [largerArray subarrayWithRange:NSMakeRange(i, smallerArray.count)];
        if ([smallerArray isEqualToArray:subArray]) {
            if (smallerArray == array) {
                return SublistKindSublist;
            } else {
                return SublistKindSuperlist;
            }
        }
    }
    return SublistKindUnequal;
}

@end
