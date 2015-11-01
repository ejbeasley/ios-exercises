//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName
{
    return [NSString stringWithFormat: @"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName
{
    NSString *resultString;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange suffixRange = [cheeseName rangeOfString:@" cheese"
                                                options:NSCaseInsensitiveSearch];
        resultString = [cheeseName stringByReplacingCharactersInRange:suffixRange
                                                           withString:@""];
        
    } else {
        resultString = cheeseName;
    }

    return resultString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *returnString;
    if (cheeseCount == 1) {
        returnString = [NSString stringWithFormat:@"1 cheese"];
    } else {
        returnString = [NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount];
    }
    
    return returnString;
}

@end
