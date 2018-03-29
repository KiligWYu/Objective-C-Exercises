#import <Foundation/Foundation.h>

@interface DifferenceOfSquares : NSObject

@property (nonatomic, assign) long differenceOfSquares;
@property (nonatomic, assign) long squareOfSums;
@property (nonatomic, assign) long sumOfSquares;

- (instancetype)initWithMax:(NSInteger)max;

@end
