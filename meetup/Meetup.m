#import "Meetup.h"

@interface Meetup ()

@property (nonatomic, assign) NSInteger year;
@property (nonatomic, assign) NSInteger month;
@property (nonatomic, assign) NSInteger day;

@end

@implementation Meetup

- (instancetype)initWithYear:(NSInteger)year andMonth:(NSInteger)month {
    if (self = [super init]) {
        self.year = year;
        self.month = month;
    }
    return self;
}

- (NSDate *)dayForDayOfWeek:(MeetupDay)dayOfWeek andOptions:(MeetupOption)option {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.year = self.year;
    components.month = self.month;
    components.day = 1;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitWeekday fromDate:[calendar dateFromComponents:components]];
    NSInteger day = 1;
    // first dayOfWeek
    if (dayOfWeek >= dateComponents.weekday) {
        day += (dayOfWeek - dateComponents.weekday);
    } else {
        day += (dayOfWeek + 7 - dateComponents.weekday);
    }
    
    if (option == MeetupOptionsLast) {
        NSInteger days = [calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:[calendar dateFromComponents:components]].length; // days in month
        if (day + 28 > days) {
            day += 21;
        } else {
            day += 28;
        }
    } else if (option == MeetupOptionsTeenth) {
        if (dayOfWeek >= dateComponents.weekday && dateComponents.weekday != 1) {
            day += 14;
        } else {
            day += 7;
        }
    } else {
        day += option;
    }
    
    components.day = day;
    return [calendar dateFromComponents:components];
}

@end
