#import "Series.h"

@implementation Series {
    NSString *_kInput;
}

- (instancetype)initWithNumberString:(NSString *)input {
    if (self = [super init]) {
        _kInput = input;
    }
    return self;
}

- (NSArray *)slicesWithSize:(NSInteger)size {
    if (size > _kInput.length) {
        return nil;
    }
    
    NSMutableArray *inputArray = [NSMutableArray array];
    for (NSInteger i = 0; i < _kInput.length; ++i) {
        [inputArray addObject:@([[_kInput substringWithRange:NSMakeRange(i, 1)] integerValue])];
    }
    
    NSMutableArray *result = [NSMutableArray array];
    for (NSInteger i = 0; i <= _kInput.length - size; ++i) {
        [result addObject:[inputArray subarrayWithRange:NSMakeRange(i, size)]];
    }
    return result;
}

@end
