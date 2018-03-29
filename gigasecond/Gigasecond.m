#import "Gigasecond.h"

@implementation Gigasecond

- (instancetype)initWithStartDate:(NSDate *)startDate {
    if (self = [super init]) {
        self.gigasecondDate = [startDate dateByAddingTimeInterval:1e9];
    }
    return self;
}

@end
