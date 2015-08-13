//
//  SKYAddItemViewController.m
//  Roomates
//
//  Created by Sky on 8/10/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import "SKYAddItemViewController.h"
#import "Item.h"

@interface SKYAddItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *addItemTextField;

@end

@implementation SKYAddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)createItem
{
    Item *item = [[Item alloc] init];
    item.name = self.addItemTextField.text;
    [self.createAndAddAToGetItemDelegate willAddAItem:item ];
}

#pragma mark- IBActions

- (IBAction)cancelTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil]; 
}

- (IBAction)addTapped:(id)sender
{
    
    if (![self.addItemTextField.text isEqualToString:@""])
    {
        [self createItem];
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
