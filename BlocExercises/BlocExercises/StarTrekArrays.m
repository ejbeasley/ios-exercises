//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *returnArray = [characterString componentsSeparatedByString:@";"];
    return returnArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *characterString = characterArray[0];
    for(NSUInteger i = 1; i < characterArray.count; i++) {
        characterString = [NSString stringWithFormat:@"%@;%@", characterString, characterArray[i]];
    }
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *sortedCharacterArray = [[NSMutableArray alloc] initWithArray:characterArray];
    NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [sortedCharacterArray sortUsingDescriptors:@[sorter]];
    return sortedCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    BOOL returnBool = NO;
    for (NSString *character in characterArray) {
        returnBool = ([character rangeOfString:@"worf"
                       options:NSCaseInsensitiveSearch].location == NSNotFound) ? NO : YES;
    }
    return returnBool;
}

@end
