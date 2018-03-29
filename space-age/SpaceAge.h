#import <Foundation/Foundation.h>

@interface SpaceAge : NSObject

@property (nonatomic, assign) double seconds;
@property (nonatomic, assign) double onEarth;
@property (nonatomic, assign) double onMercury;
@property (nonatomic, assign) double onVenus;
@property (nonatomic, assign) double onMars;
@property (nonatomic, assign) double onJupiter;
@property (nonatomic, assign) double onSaturn;
@property (nonatomic, assign) double onUranus;
@property (nonatomic, assign) double onNeptune;

- (instancetype)initWithSeconds:(double)seconds;

@end
