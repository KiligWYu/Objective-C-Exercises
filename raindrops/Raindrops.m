#import "Raindrops.h"

@implementation Raindrops

- (instancetype)initWithNumber:(NSInteger)number {
    if (self = [super init]) {
        NSString *sound = @"";
        if (number % 3 == 0) {
            sound = [sound stringByAppendingString:@"Pling"];
        }
        if (number % 5 == 0) {
            sound = [sound stringByAppendingString:@"Plang"];
        }
        if (number % 7 == 0) {
            sound = [sound stringByAppendingString:@"Plong"];
        }
        if (sound.length == 0) {
            sound = [@(number) stringValue];
        }
        self.sounds = sound;
    }
    return self;
}

@end
