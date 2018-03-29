#import <Foundation/Foundation.h>

@interface Clock : NSObject

+ (instancetype)clockWithHours:(NSInteger)hours;
+ (instancetype)clockWithHours:(NSInteger)hours minutes:(NSInteger)minutes;
- (instancetype)addMinutes:(NSInteger)addMinutes;
- (instancetype)subtractMinutes:(NSInteger)subtractMinutes;

@end
