#import "RNATranscription.h"

@implementation RNATranscription

- (NSString *)rnaFromDNAStrand:(NSString *)DNAStrand {
    if ([[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[ACGT]{1,}$"] evaluateWithObject:DNAStrand]) {
        NSMutableString *result = [NSMutableString string];
        [DNAStrand enumerateSubstringsInRange:NSMakeRange(0, DNAStrand.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
            if ([substring isEqualToString:@"A"]) {
                [result appendString:@"U"];
            }
            if ([substring isEqualToString:@"C"]) {
                [result appendString:@"G"];
            }
            if ([substring isEqualToString:@"G"]) {
                [result appendString:@"C"];
            }
            if ([substring isEqualToString:@"T"]) {
                [result appendString:@"A"];
            }
        }];
        return result;
    } else {
        return nil;
    }
}

@end
