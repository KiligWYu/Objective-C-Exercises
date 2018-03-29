#import <Foundation/Foundation.h>

@interface CryptoSquare : NSObject

@property (nonatomic, assign) NSInteger numberOfColumns;
@property (nonatomic, strong) NSArray *plaintextSegments;
@property (nonatomic, copy) NSString *cipherText;
@property (nonatomic, copy) NSString *normalizedCipherText;
@property (nonatomic, copy) NSString *normalizePlaintext;

- (instancetype)initWithText:(NSString *)text;

@end
