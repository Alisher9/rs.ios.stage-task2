#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString *ans = [[NSMutableString alloc] init];
    if (numbersArray.count > 0) {
        for (NSInteger i = 0; i < 4; i++) {
            NSInteger num = 0;
            if (i < numbersArray.count) {
                num = [numbersArray[i] intValue];
            }
            if (num < 0){
                return @"Negative numbers are not valid for input.";
            }
            else if (num > 255){
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }
            else{
                [ans appendFormat:@"%ld.", num];
            }
        }
        return [ans substringToIndex: [ans length] - 1];
    }
    return @"";
}

@end
