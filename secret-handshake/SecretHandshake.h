#import <Foundation/Foundation.h>

@interface SecretHandshake : NSObject

@property (nonatomic, strong) NSArray *commands;

- (instancetype)initWithNumber:(NSInteger)number;

@end
