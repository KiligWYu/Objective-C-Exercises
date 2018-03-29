#import "Robot.h"

static NSMutableArray *names;
static NSArray *letters;

@interface Robot ()

@property (nonatomic, copy) NSString *robotName;

@end

@implementation Robot

- (NSString *)name {
    if (self.robotName) {
        return self.robotName;
    }
    
    if (!letters) {
        letters = @[ @"A", @"B",@"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z" ];
    }
    if (!names) {
        names = [NSMutableArray array];
    }
    
    NSString *name;
    do {
        name = [NSString stringWithFormat:@"%@%@%03u", letters[arc4random() % 26], letters[arc4random() % 26], arc4random() % 1000];
    } while ([names containsObject:name]);
    [names addObject:name];
    self.robotName = name;
    return name;
}

- (void)reset {
    self.robotName = nil;
}

@end
