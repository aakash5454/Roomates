//
//  SKYAddGroupViewController.m
//  Roomates
//
//  Created by Sky on 8/10/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import "SKYAddGroupViewController.h"
#import "SKYGroupsTableViewController.h"


@interface SKYAddGroupViewController ()

@property (weak, nonatomic) IBOutlet UITextField *groupNameTextField;

@end

@implementation SKYAddGroupViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)createGroup
{
    Group *group = [[Group alloc] init];
    group.name = self.groupNameTextField.text;
    
   [self.CreateAndAddAGroupDelegate willAddAGroup:group];
    
}

#pragma mark- IBActions

- (IBAction)cancelTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveTapped:(id)sender
{
    if (![self.groupNameTextField.text isEqualToString:@""])
    {
    [self createGroup];        
    }

    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
