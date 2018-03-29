#import "FlattenArrayExample.h"

@implementation FlattenArrayExample

+ (NSArray *)flattenArray:(NSArray *)array {
    NSMutableArray *flattenArray = [NSMutableArray array];
    return [self recursive:flattenArray withInputArray:array];
}

+ (NSArray *)recursive:(NSMutableArray *)flattenArray withInputArray:(NSArray *)inputArray {
    [inputArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSArray class]]) {
            [self recursive:flattenArray withInputArray:obj];
        } else if (![obj isKindOfClass:[NSNull class]]) {
            [flattenArray addObject:obj];
        }
    }];
    return flattenArray;
}

@end
