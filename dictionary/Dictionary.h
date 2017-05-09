

#import <Foundation/Foundation.h>

@interface Dictionary : NSObject
@property (nonatomic) NSInteger currentScore;
@property (nonatomic) NSDictionary *dictionary;
- (NSInteger) gameLogic: (NSString*) userInput;
- (BOOL) correctAnswer;
@end
