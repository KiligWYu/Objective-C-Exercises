#import <Foundation/Foundation.h>

@interface Luhn : NSObject

@property (nonatomic, assign) BOOL isValid;

- (instancetype)initWithString:(NSString *)input;

@end
