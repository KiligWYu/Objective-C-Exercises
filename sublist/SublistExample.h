#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SublistKind) {
    SublistKindEqual,
    SublistKindUnequal,
    SublistKindSublist,
    SublistKindSuperlist,
};

@interface SublistExample : NSObject

+ (SublistKind)classifierForFirstList:(NSArray *)array andSecondList:(NSArray *)secondArray;

@end
