#import "Clock.h"

@interface Clock ()

@property (nonatomic, assign) NSInteger minutes;

@end

@implementation Clock

+ (instancetype)clockWithHours:(NSInteger)hours {
    Clock *clock = [[self alloc] init];
    clock.minutes = hours * 60;
    return clock;
}

+ (instancetype)clockWithHours:(NSInteger)hours minutes:(NSInteger)minutes {
    Clock *clock = [[self alloc] init];
    clock.minutes = hours * 60 + minutes;
    return clock;
}

- (instancetype)addMinutes:(NSInteger)addMinutes {
    self.minutes += addMinutes;
    return self;
}

- (instancetype)subtractMinutes:(NSInteger)subtractMinutes {
    self.minutes -= subtractMinutes;
    return self;
}

- (NSString *)description {
    NSInteger hours = labs(self.minutes) / 60 % 24;
    NSInteger minutes = labs(self.minutes) % 60;
    if (self.minutes < 0) {
        hours = 24 - hours - (minutes > 0 ? 1 : 0);
        if (minutes > 0) {
            minutes = 60 - minutes;
        }
    }
    return [NSString stringWithFormat:@"%02ld:%02ld", (long)hours, (long)minutes];
}

- (BOOL)isEqual:(Clock *)object {
    return [[self description] isEqualToString:[object description]];
}

@end
