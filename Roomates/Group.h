//
//  Group.h
//  Roomates
//
//  Created by Aakash on 8/11/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Group : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *noOfMembers;
@property (nonatomic, strong) NSString *dateCreated;
@property (nonatomic, strong) NSString *adminWhoCreatedTheGroup;

@end
