#import "Allergies.h"

@implementation Allergies {
//    NSMutableArray *allergies;
    NSInteger _kScore;
}

- (instancetype)initWithScore:(NSInteger)score {
    if (self = [super init]) {
        _kScore = score;
    }
    return self;
}

- (BOOL)hasAllergy:(Allergy)allergy {
    return (_kScore & allergy);
}

@end
