//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Gan Chau on 5/20/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivia.h"

@interface FISLocation : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *latitude;
@property (strong, nonatomic) NSNumber *longitude;
@property (strong, nonatomic) NSArray *trivia;

- (instancetype)initWithName:(NSString *)name
                    latitude:(NSNumber *)latitude
                   longitude:(NSNumber *)longitude;
- (NSString *)shortenedNameToLength:(NSInteger)count;
- (BOOL)verifyLocation;
- (FISTrivia *)topTrivia;

@end
