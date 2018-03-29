#import <Foundation/Foundation.h>

@interface NucleotideCount : NSObject

- (instancetype)initWithStrand:(NSString *)strand;
- (NSInteger)count:(NSString *)symbol;
- (NSDictionary *)nucleotideCounts;

@end
