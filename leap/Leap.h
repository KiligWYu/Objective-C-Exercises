#import <Foundation/Foundation.h>

@interface Leap : NSObject

@property (nonatomic, assign) BOOL isLeapYear;

- (instancetype)initWithCalendarYear:(NSNumber *)year;

@end
