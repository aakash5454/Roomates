//
//  CreateAndAddAGroupProtocol.h
//  Roomates
//
//  Created by Sky on 8/11/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Group.h"

@protocol CreateAndAddAGroupProtocol <NSObject>

@property (nonatomic, strong) NSString *nameString; 

-(void)willAddAGroup:(Group*)group;

@end
