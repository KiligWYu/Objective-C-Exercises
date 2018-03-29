#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, TriangleKind) {
    TriangleKindEquilateral,
    TriangleKindIsosceles,
    TriangleKindScalene,
};

@interface Triangle : NSObject

+ (TriangleKind)kindForSides:(float)side1 :(float)side2 :(float)side3;

@end
