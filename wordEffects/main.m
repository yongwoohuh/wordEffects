//
//  main.m
//  wordEffects
//
//  Created by Yongwoo Huh on 1/15/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
 
    // 255 unit long array of characters
    char inputChars[255];
    char inputNum[255];
    int newNum;
    
    
    while(true)
    {
    NSString *menu = [NSString stringWithFormat:@"\n ==== String Opperations Menu ====\n"
                      "1. Uppercase\n"
                      "2. Lowercase\n"
                      "3. Numberize\n"
                      "4. Candianize\n"
                      "5. Respond\n"
                      "6. De-space-it\n"
                      "=================\n\n" ];
    
    
    
    // print menu for operations
    NSLog(@"%@", menu);
    
    
    printf("Input a number: ");
    fgets(inputNum, 255, stdin);
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
    
    int menuNum = atoi(inputNum);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // print NSString object
    NSLog(@"input was: %@", inputString);
    
    switch (menuNum) {
        case 1:
            NSLog(@"Changed string: %@", [inputString uppercaseString]);
            break;
        case 2:
            NSLog(@"Changed string: %@", [inputString lowercaseString]);
            break;
        case 3:
            // Numberize
            newNum = [inputString intValue];
            if (newNum) {
                NSLog(@"value is %d", newNum);
                NSLog(@"String changed into int.");
            } else {
                NSLog(@"could not change string into int");
            }
            break;
            
        case 4:
           // NSLog(@"%@", [[NSString stringWithFormat:@"%@, eh?",inputString] stringByReplacingOccurrencesOfString:@"\n" withString:@" "]);
            
            NSLog(@"Changed string: %@", [[inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]] stringByAppendingString:@", eh?"]) ;
            
            break;
        case 5:
            // Respond
            if ([inputString containsString:@"?"]) {
                NSLog(@"I don't know");
            } else if ([inputString containsString:@"!"]) {
                NSLog(@"Whoa, calm down");
            }
            break;
        case 6:
            NSLog(@"changed string: %@",  [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            break;
        default:
            NSLog(@"Not in the menu. Please only pick numbers in the menu");
            break;
        }
    
    }
    
    return 0;
}
