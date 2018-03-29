#import <Foundation/Foundation.h>

@interface WordCount : NSObject

@property (nonatomic, strong) NSDictionary *count;

- (instancetype)initWithString:(NSString *)string;

@end
