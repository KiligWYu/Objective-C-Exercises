#import <Foundation/Foundation.h>

@interface GradeSchool : NSObject

- (void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade;
- (NSDictionary *)db;
- (NSArray *)studentsInGrade:(NSNumber *)grade;
- (NSDictionary *)sort;

@end
