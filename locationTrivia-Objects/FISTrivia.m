//
//  FISTrivia.m
//  locationTrivia-Objects
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivia.h"

@implementation FISTrivia

- (instancetype)init
{
    return [self initWithContent:@"" Likes:0];
}

- (instancetype)initWithContent:(NSString *)content Likes:(NSInteger)likes
{
    self = [super init];
    
    if (self) {
        _content = content;
        _likes = likes;
    }
    
    return self;
}

@end
