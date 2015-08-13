//
//  SKYGroupsTableViewController.m
//  Roomates
//
//  Created by Sky on 8/10/15.
//  Copyright (c) 2015 Sky. All rights reserved.
//

#import "SKYGroupsTableViewController.h"
#import "SKYAddGroupViewController.h"
#import "SKYToGetTableViewController.h"



@interface SKYGroupsTableViewController ()
@property (nonatomic, strong) NSMutableArray *groupsArray;
@property (strong, nonatomic) IBOutlet UITableView *groupsTableView;

@end

static NSString *cellIdentifier = @"groupsCell";

@implementation SKYGroupsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)initialize
{
    self.groupsArray = [[NSMutableArray alloc] init];
    
}


#pragma mark - CreateAndAddAGroupProtocol Methods

-(void)willAddAGroup:(Group*)group
{
    [self.groupsArray addObject:group];
    [self.groupsTableView reloadData];
    
}



#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.groupsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = [self.groupsArray[indexPath.row] name];
    
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
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"groupsTVCtoAddGroupVC"])
    {
        UINavigationController *nagVC = (UINavigationController*)segue.destinationViewController;
        SKYAddGroupViewController *addVC = [nagVC.viewControllers firstObject];
        addVC.CreateAndAddAGroupDelegate = self;
    }
    
    //GroupsToGet
    
    if ([segue.identifier isEqualToString:@"GroupsToGet"])
    {
        NSIndexPath *indexPath  = [self.groupsTableView indexPathForSelectedRow];
        NSString *titleForToGetScreen = [self.groupsArray[indexPath.row] name];
        
        UINavigationController *nagVC = (UINavigationController*)segue.destinationViewController;
        SKYToGetTableViewController *toGetVC = [nagVC.viewControllers firstObject];
        NSString *toGetString = @"To Get items for ";
        toGetVC.navigationItem.title = [toGetString stringByAppendingString: titleForToGetScreen];
    }
}


@end
