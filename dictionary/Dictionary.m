
#import "Dictionary.h"

@implementation Dictionary
- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentScore = 0;
        _dictionary =@{@"a": @(1),
                       @"b": @(2),
                       @"c": @(3),
                       @"d": @(4),
                       @"e": @(5),
                       @"f": @(6),
                       @"g": @(7),
                       @"h": @(8),
                       @"I": @(9),
                       @"j": @(10),
                       @"k": @(11),
                       @"l": @(12),
                       @"m": @(13),
                       @"n": @(14),
                       @"o": @(15),
                       @"p": @(16),
                       @"q": @(17),
                       @"r": @(18),
                       @"s": @(19),
                       @"t": @(20),
                       @"u": @(21),
                       @"v": @(22),
                       @"w": @(23),
                       @"x": @(24),
                       @"y": @(25),
                       @"z": @(26)};
        
    }
    return self;
}


- (NSInteger) gameLogic: (NSString*) userInput {
    
    for (int i=0; i <userInput.length; i++) {
        
        char characterValue = [userInput characterAtIndex:i];
        NSString *inputString = [NSString stringWithFormat:@"%c", characterValue];
        if ([self.dictionary objectForKey:inputString]) {
            NSInteger stringValue = [[self.dictionary objectForKey:inputString] integerValue];
            self.currentScore = self.currentScore + stringValue;
        
        }
    }
    return self.currentScore;
}


- (BOOL) correctAnswer {
    if (self.currentScore == 100) {
        NSLog(@"You win");
        return YES;
    } else {
        NSLog(@"wrong. You word equals %ld", self.currentScore);
        return NO;
    }
}


@end
