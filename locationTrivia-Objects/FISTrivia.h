//
//  FISTrivia.h
//  locationTrivia-Objects
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivia : NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic) NSInteger likes;

- (instancetype)initWithContent:(NSString *)content Likes:(NSInteger)likes;

@end
