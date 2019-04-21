//
//  ContactViewController.m
//  MyContacts
//
//  Created by Varun Kumar on 21/04/19.
//  Copyright © 2019 Chuck Konkol. All rights reserved.
//

#import "ContactViewController.h"
#import "MyDetailViewController.h"
#import "MyContactsViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
        [self.fullName setText:[self.contactdb valueForKey:@"fullname"]];
        [self.email setText:[self.contactdb valueForKey:@"email"]];
        [self.number setText:[self.contactdb valueForKey:@"phone"]];
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"UpdateContacts"]) {
//        
//        NSManagedObject *selectedDevice = [self.contactarray objectAtIndex:[[ self.tableView indexPathForSelectedRow] row]];
//        ContactViewController *destViewController = segue.destinationViewController;
//        destViewController.contactdb = selectedDevice;
//    }
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
