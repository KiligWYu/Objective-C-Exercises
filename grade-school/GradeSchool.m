#import "GradeSchool.h"

@implementation GradeSchool {
    NSMutableDictionary *_kGrades;
}

- (instancetype)init {
    if (self = [super init]) {
        _kGrades = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade {
    NSMutableArray *names = _kGrades[grade];
    if (names) {
        [names addObject:name];
    } else {
        _kGrades[grade] = [NSMutableArray arrayWithObject:name];
    }
}

- (NSDictionary *)db {
    return _kGrades;
}

- (NSArray *)studentsInGrade:(NSNumber *)grade {
    return _kGrades[grade] ? _kGrades[grade] : @[];
}

- (NSDictionary *)sort {
    for (NSMutableArray *array in [_kGrades allValues]) {
        [array sortUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
            return [obj1 compare:obj2];
        }];
    }
    return _kGrades;
}

@end
