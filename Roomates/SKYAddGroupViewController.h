//
//  SKYAddGroupViewController.h
//  Roomates
//
//  Created by Sky on 8/10/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAndAddAGroupProtocol.h"


@interface SKYAddGroupViewController : UIViewController

@property (nonatomic, weak) id<CreateAndAddAGroupProtocol> CreateAndAddAGroupDelegate;

@end
