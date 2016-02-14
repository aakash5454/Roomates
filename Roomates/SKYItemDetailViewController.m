//
//  SKYItemDetailViewController.m
//  Roomates
//
//  Created by Aakash on 2/14/16.
//  Copyright © 2016 Sky. All rights reserved.
//

#import "SKYItemDetailViewController.h"

@interface SKYItemDetailViewController ()

@end

@implementation SKYItemDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- IBActions

- (IBAction)backTapped:(id)sender
{
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
