#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject

@property (nonatomic, strong) NSArray *list;
@property (nonatomic, assign) NSInteger middle;

- (instancetype)initWithArray:(NSArray *)array;
- (NSInteger)searchFor:(NSInteger)number;

@end
