#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

@property (nonatomic, copy) NSString *number;
@property (nonatomic, copy) NSString *areaCode;

- (instancetype)initWithString:(NSString *)string;

@end
