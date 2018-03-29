#import <Foundation/Foundation.h>

@interface Series : NSObject

- (instancetype)initWithNumberString:(NSString *)input;
- (NSArray *)slicesWithSize:(NSInteger)size;

@end
