//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number
{
    return [NSNumber numberWithDouble:[number doubleValue]*2];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber
{
    NSNumber *number1;
    NSNumber *number2;
    
    if (otherNumber > number) {
        number1 = [NSNumber numberWithInteger:number];
        number2 = [NSNumber numberWithInteger:otherNumber];
    } else {
        number1 = [NSNumber numberWithInteger:otherNumber];
        number2 = [NSNumber numberWithInteger:number];
    }
    
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    for (NSInteger i = number1.integerValue; i <= number2.integerValue; i++) {
        [returnArray addObject:[NSNumber numberWithInteger:i]];
    }
    return [returnArray copy];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers
{
    NSNumber *lowestNumber = arrayOfNumbers[0];
    for (NSNumber *number in arrayOfNumbers) {
        if (number.integerValue < lowestNumber.integerValue) {
            lowestNumber = number;
        }
    }
    return lowestNumber.integerValue;
}

@end
