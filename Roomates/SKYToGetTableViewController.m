//
//  SKYToGetTableViewController.m
//  Roomates
//
//  Created by Sky on 8/10/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import "SKYToGetTableViewController.h"
#import "SKYAddItemViewController.h"

@interface SKYToGetTableViewController ()

@property (strong, nonatomic) IBOutlet UITableView *toGetTableView;
@property (nonatomic, strong) NSMutableArray *toGetList;

@end


static NSString *cellIdentifier = @"toGetCell";
@implementation SKYToGetTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)initialize
{
    self.toGetList = [[NSMutableArray alloc] init];
   
}

#pragma mark - CreateAndAddAToGetItemProtocol Methods

-(void)willAddAItem:(Item*)item
{
    [self.toGetList addObject:item];
    [self.toGetTableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.toGetList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [self.toGetList[indexPath.row] name];

    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"addItemToGetList"])
    {
        UINavigationController *nagVC = (UINavigationController*)segue.destinationViewController;
        
        SKYAddItemViewController *addItemVC = [nagVC.viewControllers firstObject];
        addItemVC.createAndAddAToGetItemDelegate = self;
        
    }
    
    
    
}


@end
