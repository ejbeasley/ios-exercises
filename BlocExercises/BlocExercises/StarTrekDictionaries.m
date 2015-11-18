//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return [characterDictionary objectForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favoriteDrinks = [[NSMutableArray alloc] init];
    for (NSDictionary *character in charactersArray) {
        [favoriteDrinks addObject:[character objectForKey:@"favorite drink"]];
    }
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *returnDictionary = [characterDictionary mutableCopy];
    [returnDictionary setDictionary:characterDictionary];
    [returnDictionary setObject:@"no_quote" forKey:@"quote"];
    return returnDictionary;
}

@end
