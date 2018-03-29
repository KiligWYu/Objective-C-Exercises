#import "NucleotideCount.h"

@implementation NucleotideCount {
    NSString *_kStrand;
}

- (instancetype)initWithStrand:(NSString *)strand {
    if (self = [super init]) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[ACGT]{0,}$"];
        NSAssert([predicate evaluateWithObject:strand], @"NOT DNA STRAND!");
        _kStrand = strand;
    }
    return self;
}

- (NSInteger)count:(NSString *)symbol {
    return _kStrand.length - [[_kStrand copy] stringByReplacingOccurrencesOfString:symbol withString:@""].length;
}

- (NSDictionary *)nucleotideCounts {
    return @{
             @"A" : @([self count:@"A"]),
             @"C" : @([self count:@"C"]),
             @"G" : @([self count:@"G"]),
             @"T" : @([self count:@"T"])
             };
}

@end
