#import <Foundation/Foundation.h>

@interface Anagram : NSObject

- (instancetype)initWithString:(NSString *)string;
- (NSArray *)match:(NSArray *)lists;

@end
