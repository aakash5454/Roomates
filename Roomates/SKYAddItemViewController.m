//
//  SKYAddItemViewController.m
//  Roomates
//
//  Created by Sky on 8/10/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import "SKYAddItemViewController.h"

@interface SKYAddItemViewController ()

@end

@implementation SKYAddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- IBActions

- (IBAction)cancelTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil]; 
}

- (IBAction)addTapped:(id)sender
{
    
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
