#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, Allergy) {
    AllergenEggs = 1,
    AllergenPeanuts = 2,
    AllergenShellfish = 4,
    AllergenStrawberries = 8,
    AllergenTomatoes = 16,
    AllergenChocolate = 32,
    AllergenPollen = 64,
    AllergenCats = 128,
};

@interface Allergies : NSObject

- (instancetype)initWithScore:(NSInteger)score;
- (BOOL)hasAllergy:(Allergy)allergy;

@end
