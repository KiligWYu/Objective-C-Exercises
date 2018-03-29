#import <Foundation/Foundation.h>

@interface BeerSongExample : NSObject

@property (nonatomic, copy) NSString *singBeerSong;

- (instancetype)initWithNumberOfBeerBottles:(NSInteger)bottles;

@end
