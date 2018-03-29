#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, NumberClassification) {
    NumberClassificationPerfect,
    NumberClassificationDeficient,
    NumberClassificationAbundant,
};

@interface NumberClassifier : NSObject

@property (nonatomic, assign) NumberClassification classification;

- (instancetype)initWithNumber:(NSInteger)number;

@end
