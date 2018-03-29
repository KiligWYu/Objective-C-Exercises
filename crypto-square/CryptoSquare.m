#import "CryptoSquare.h"

@interface CryptoSquare ()

@property (nonatomic, assign) NSInteger numberOfRows;

@end

@implementation CryptoSquare

- (instancetype)initWithText:(NSString *)text {
    if (self = [super init]) {
        self.normalizePlaintext = [[text lowercaseString] stringByReplacingOccurrencesOfString:@"[^a-z0-9]" withString:@"" options:NSRegularExpressionSearch range:NSMakeRange(0, text.length)];
    }
    return self;
}

- (NSInteger)numberOfColumns {
    for (NSInteger c = 1; c <= self.normalizePlaintext.length; ++c) {
        NSInteger r = self.normalizePlaintext.length / c + (self.normalizePlaintext.length % c > 0 ? 1 : 0);
        if (c >= r && c - r <= 1) {
            self.numberOfRows = r;
            return c;
        }
    }
    return 0;
}

- (NSArray *)plaintextSegments {
    return [self segments:self.normalizePlaintext];
}

- (NSString *)cipherText {
    NSArray *array = self.plaintextSegments;
    NSMutableString *result = [NSMutableString string];
    for (NSInteger i = 0; i < self.numberOfColumns; ++i) {
        for (NSInteger j = 0; j < array.count; ++j) {
            if ([array[j] length] > i) {
                [result appendString:[array[j] substringWithRange:NSMakeRange(i, 1)]];
            }
        }
    }
    return result;
}

- (NSString *)normalizedCipherText {
    return [[self segments:self.cipherText] componentsJoinedByString:@" "];
}

- (NSArray *)segments:(NSString *)text {
    NSInteger c, r;
    if ([text isEqualToString:self.normalizePlaintext]) {
        c = self.numberOfColumns;
        r = self.numberOfRows;
    } else {
        c = self.numberOfRows;
        r = self.numberOfColumns;
    }
    NSMutableArray *array = [NSMutableArray array];
    for (NSInteger i = 0; i < r; ++i) {
        if (i < r - 1) {
            [array addObject:[text substringWithRange:NSMakeRange(i * c, c)]];
        } else {
            [array addObject:[text substringFromIndex:i * c]];
        }
    }
    return array;
}

@end
