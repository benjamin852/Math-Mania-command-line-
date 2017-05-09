

#import <Foundation/Foundation.h>
#import "Dictionary.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (true) {
            Dictionary *dictionary = [[Dictionary alloc] init];
            NSString *inputString = [InputCollector userInput];
            
            
            [dictionary gameLogic:inputString];
            
            if ([dictionary correctAnswer]) {
                break;
            }
        }
    }
    return 0;
}
