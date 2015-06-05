//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Gan Chau on 5/20/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

- (instancetype)initWithName:(NSString *)name latitude:(NSNumber *)latitude longitude:(NSNumber *)longitude
{
    self = [super init];
    
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
    }
    
    return self;
}

- (instancetype)init
{
    return [self initWithName:@"" latitude:@0 longitude:@0];
}


- (NSString *)shortenedNameToLength:(NSInteger)count
{
    NSString *name = self.name;
    if (count < 0 || name.length == count) {
        return name;
    }
    return [name substringToIndex:count];
}

- (BOOL)verifyLocation
{
    if ([self.name isEqualToString:@"Empire State Building"] &&
        [self.latitude isEqualToNumber:@40.7484] &&
        [self.longitude isEqualToNumber:@-73.9857]) {
        return YES;
    }
    return NO;
}

- (FISTrivia *)topTrivia
{
    FISTrivia *mostLikedTrivia = [self.trivia firstObject];
    for (FISTrivia *trivia in self.trivia) {
        if (trivia.likes > mostLikedTrivia.likes) {
            mostLikedTrivia = trivia;
        }
    }
    return mostLikedTrivia;
}

@end
