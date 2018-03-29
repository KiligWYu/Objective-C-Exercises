#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, MeetupDay) {
    MeetupDayOfWeekSunday = 1,
    MeetupDayOfWeekMonday,
    MeetupDayOfWeekTuesday,
    MeetupDayOfWeekWednesday,
    MeetupDayOfWeekThursday,
    MeetupDayOfWeekFriday,
    MeetupDayOfWeekSaturday,
};

typedef NS_ENUM(NSUInteger, MeetupOption) {
    MeetupOptionsFirst = 0,
    MeetupOptionsSecond = 7,
    MeetupOptionsThird = 14,
    MeetupOptionsFourth = 21,
    MeetupOptionsLast,
    MeetupOptionsTeenth,
};

@interface Meetup : NSObject

- (instancetype)initWithYear:(NSInteger)year andMonth:(NSInteger)month;
- (NSDate *)dayForDayOfWeek:(MeetupDay)dayOfWeek andOptions:(MeetupOption)option;

@end
