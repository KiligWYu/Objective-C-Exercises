#import <Foundation/Foundation.h>

@interface RunLengthEncoding : NSObject

+ (NSString *)encode:(NSString *)input;
+ (NSString *)decode:(NSString *)input;

@end
