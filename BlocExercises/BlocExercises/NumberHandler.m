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
    return [NSNumber numberWithInteger:(number.integerValue*2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber
{
    NSInteger numberOne;
    NSInteger numberTwo;
    
    if (number < otherNumber){
        numberOne = number;
        numberTwo = otherNumber;
    } else {
        numberOne = otherNumber;
        numberTwo = number;
    }
    
    NSMutableArray *returnArray = [NSMutableArray new];
    for (NSInteger i = numberOne; i <= numberTwo; i++) {
        [returnArray addObject:[NSNumber numberWithInteger:i]];
    }
    return [returnArray copy];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers
{
    NSNumber *lowestNumber;
    for (NSNumber *currentNumber in arrayOfNumbers) {
        if (currentNumber.integerValue < lowestNumber.integerValue) {
            lowestNumber = currentNumber;
        }
    }
    return lowestNumber.integerValue;
}

@end
