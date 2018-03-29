#import "Isogram.h"

@implementation Isogram

+ (BOOL)isIsogram:(NSString *)words {
    NSString *newWords = [[[words lowercaseString]
                           stringByReplacingOccurrencesOfString:@" " withString:@""]
                          stringByReplacingOccurrencesOfString:@"-" withString:@""];
    NSMutableArray *charsArray = [NSMutableArray array];
    for (NSInteger i = 0; i < newWords.length; ++i) {
        NSString *str = [newWords substringWithRange:NSMakeRange(i, 1)];
        if ([charsArray containsObject:str]) {
            return NO;
        }
        [charsArray addObject:str];
    }
    return YES;
}

@end
