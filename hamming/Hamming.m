#import "Hamming.h"

@implementation Hamming

+ (NSInteger)compute:(NSString *)strands against:(NSString *)strands2 {
    NSInteger hammingDistance = 0;
    if ([strands isEqualToString:strands2]) {
        return hammingDistance;
    }
    for (NSInteger i = 0; i < MIN(strands.length, strands2.length); ++i) {
        if ([strands characterAtIndex:i] != [strands2 characterAtIndex:i]) {
            hammingDistance++;
        }
    }
    return hammingDistance;
}

@end
