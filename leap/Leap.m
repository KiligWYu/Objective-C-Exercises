#import "Leap.h"

@implementation Leap

- (instancetype)initWithCalendarYear:(NSNumber *)year {
    if (self = [super init]) {
        if ((year.integerValue % 4 == 0 && year.integerValue % 100 != 0)
            || year.integerValue % 400 == 0) {
            self.isLeapYear = YES;
        } else {
            self.isLeapYear = NO;
        }
    }
    return self;
}

@end
