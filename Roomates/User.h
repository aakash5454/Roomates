//
//  User.h
//  Roomates
//
//  Created by Aakash on 2/7/16.
//  Copyright © 2016 Sky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Group.h"

@interface User : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Group *group;

@end
