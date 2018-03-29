#import "LargestSeriesProduct.h"

@interface LargestSeriesProduct ()

@property (nonatomic, copy) NSString *string;

@end

@implementation LargestSeriesProduct

- (instancetype)initWithNumberString:(NSString *)string {
    if (self = [super init]) {
        self.string = string;
    }
    return self;
}

- (long)largestProduct:(NSInteger)length {
    NSAssert(self.string.length >= length && length >= 0, @"length <= string.length && length >= 0");
    NSAssert(([[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[0-9]*$"] evaluateWithObject:self.string]), @"String contains non-numeric");
    if (length == 0) {
        return 1;
    }
    long largestProduct = 0;
    for (NSInteger i = 0; i <= self.string.length - length; ++i) {
        NSString *substring = [self.string substringWithRange:NSMakeRange(i, length)];
        if ([substring containsString:@"0"]) {
            continue;
        }
        __block long product = 1;
        [substring enumerateSubstringsInRange:NSMakeRange(0, length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
            product *= [substring integerValue];
        }];
        largestProduct = MAX(largestProduct, product);
    }
    return largestProduct;
}

@end
