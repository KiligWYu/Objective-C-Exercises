#import "WordCount.h"

@implementation WordCount

- (instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        string = [[string lowercaseString] stringByReplacingOccurrencesOfString:@"[^a-z0-9 ]" withString:@"" options:NSRegularExpressionSearch range:NSMakeRange(0, string.length)];
        NSArray *array = [string componentsSeparatedByString:@" "];
        NSMutableDictionary *count = [NSMutableDictionary dictionary];
        [array enumerateObjectsUsingBlock:^(NSString *word, NSUInteger idx, BOOL * _Nonnull stop) {
            if (word.length > 0) {
                count[word] = @([count[word] integerValue] + 1);
            }
        }];
        self.count = count;
    }
    return self;
}

@end
