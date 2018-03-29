#import "Etl.h"

@implementation Etl

+ (NSDictionary *)transform:(NSDictionary *)old {
    NSMutableDictionary *results = [NSMutableDictionary dictionary];
    for (NSNumber *key in [old allKeys]) {
        for (NSString *letter in old[key]) {
            results[[letter lowercaseString]] = key;
        }
    }
    return results;
}

@end
