#import <Foundation/Foundation.h>

@interface ScrabbleScore : NSObject

@property (nonatomic, assign) NSInteger score;

- (instancetype)initWithWord:(NSString *)word;
+ (NSInteger)score:(NSString *)word;

@end
