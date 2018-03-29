#import "BeerSongExample.h"

@implementation BeerSongExample

- (instancetype)initWithNumberOfBeerBottles:(NSInteger)bottles {
    if (self = [super init]) {
        NSString *verses = @"";
        for (NSInteger i = bottles; i>= 0; --i) {
            if (verses.length > 0) {
                verses = [verses stringByAppendingString:@"\n\n"];
            }
            if (i == 1) {
                verses = [verses stringByAppendingString:@"1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall."];
            } else if (i == 0) {
                verses = [verses stringByAppendingFormat:@"No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."];
            } else {
                verses = [verses stringByAppendingFormat:@"%ld bottles of beer on the wall, %ld bottles of beer.\nTake one down and pass it around, %ld bottle%@ of beer on the wall.", (long)i, (long)i, (long)(i - 1), (i - 1 > 1 ? @"s" : @"")];
            }
        }
        self.singBeerSong = verses;
    }
    return self;
}

@end
