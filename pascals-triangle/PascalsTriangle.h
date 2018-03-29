#import <Foundation/Foundation.h>

@interface PascalsTriangle : NSObject

@property (nonatomic, strong) NSArray *rows;

- (instancetype)initWithNumberOfRows:(NSInteger)rows;

@end
