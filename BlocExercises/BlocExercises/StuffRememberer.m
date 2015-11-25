//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"
@interface StuffRememberer ()
@property (strong, nonatomic) NSMutableArray *rememberedArray;
@property (copy) NSMutableArray *copiedArray;
@property (assign) CGFloat rememberedFloat;

@end

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copiedArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberedFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.rememberedArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return [self.copiedArray mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    return self.rememberedFloat;
}

@end