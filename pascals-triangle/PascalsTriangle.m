#import "PascalsTriangle.h"

@implementation PascalsTriangle

- (instancetype)initWithNumberOfRows:(NSInteger)rows {
    if (self = [super init]) {
        NSMutableArray *rowsArray = [NSMutableArray array];
        for (NSInteger i = 0; i < rows; ++i) {
            if (i == 0) {
                [rowsArray addObject:@[@1]];
            } else if (i == 1) {
                [rowsArray addObject:@[@1, @1]];
            } else {
                NSMutableArray *array = [NSMutableArray arrayWithObject:@1];
                NSArray *lastRowArray = [rowsArray lastObject];
                for (NSInteger j = 1; j < [lastRowArray count]; ++j) {
                    [array addObject:@([lastRowArray[j - 1] integerValue] + [lastRowArray[j] integerValue])];
                }
                [array addObject:@1];
                [rowsArray addObject:array];
            }
        }
        self.rows = rowsArray;
    }
    return self;
}

@end
