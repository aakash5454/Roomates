//
//  CreateAndAddAToGetItemProtocol.h
//  Roomates
//
//  Created by Aakash on 8/12/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@protocol CreateAndAddAToGetItemProtocol <NSObject>

-(void)willAddAItem:(Item*)item;

@end
