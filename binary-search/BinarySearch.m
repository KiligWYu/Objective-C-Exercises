#import "BinarySearch.h"

@implementation BinarySearch

- (instancetype)initWithArray:(NSArray *)array {
    NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        return [obj1 integerValue] > [obj2 integerValue];
    }];
    if (![array isEqualToArray:sortedArray]) {
        return nil;
    }
    if (self = [super init]) {
        self.list = array;
        self.middle = array.count / 2;
    }
    return self;
}

- (NSInteger)searchFor:(NSInteger)number {
    NSInteger middle = self.list.count / 2;
    NSInteger middleValue = [self.list[middle] integerValue];
    NSArray *subarray = self.list;
    do {
        if (number == middleValue) {
            return [self.list indexOfObject:subarray[middle]];
        }
        if (middle == 0) {
            return NSNotFound;
        }
        if (number > middleValue) {
            subarray = [subarray subarrayWithRange:NSMakeRange(middle + 1, subarray.count % 2 == 0 ? middle - 1 : middle)];
        } else {
            subarray = [subarray subarrayWithRange:NSMakeRange(0, middle)];
        }
        middle = subarray.count / 2;
        middleValue = [subarray[middle] integerValue];
    } while (YES);
    return NSNotFound;
}

@end
