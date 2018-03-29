#import "Anagram.h"

@interface Anagram ()

@property (nonatomic, copy) NSString *string;

@end

@implementation Anagram

- (instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        self.string = string;
    }
    return self;
}

- (NSArray *)match:(NSArray *)lists {
    NSMutableArray *result = [NSMutableArray array];
    [lists enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *string1 = [obj lowercaseString];
        NSString *string2 = [self.string lowercaseString];
        if (string1.length == string2.length && ![string1 isEqualToString:string2]) {
            NSMutableArray *array = [NSMutableArray array];
            NSMutableArray *array2 = [NSMutableArray array];
            for (NSInteger i = 0; i < obj.length; ++i) {
                [array addObject:[string1 substringWithRange:NSMakeRange(i, 1)]];
                [array2 addObject:[string2 substringWithRange:NSMakeRange(i, 1)]];
            }
            [array sortUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
                return [obj1 compare:obj2];
            }];
            [array2 sortUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
                return [obj1 compare:obj2];
            }];
            if ([array isEqualToArray:array2]) {
                [result addObject:obj];
            }
        }
    }];
    return result;
}

@end
