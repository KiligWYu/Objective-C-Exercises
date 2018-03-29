#import "SpaceAge.h"

@implementation SpaceAge

- (instancetype)initWithSeconds:(double)seconds {
    if (self = [super init]) {
        self.seconds   = seconds;
        self.onEarth   = seconds / 31557600;
        self.onMercury = self.onEarth / 0.2408467;
        self.onVenus   = self.onEarth / 0.61519726;
        self.onMars    = self.onEarth / 1.8808158;
        self.onJupiter = self.onEarth / 11.862615;
        self.onSaturn  = self.onEarth / 29.447498;
        self.onUranus  = self.onEarth / 84.016846;
        self.onNeptune = self.onEarth / 164.79132;
    }
    return self;
}

@end
