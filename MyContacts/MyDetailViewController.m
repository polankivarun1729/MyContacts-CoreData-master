//
//  MyDetailViewController.m
//  MyContacts
//
//  Created by Charles Konkol on 11/10/13.
//  Copyright (c) 2013 Chuck Konkol. All rights reserved.
//

#import "MyDetailViewController.h"
#import "MyContactsAppDelegate.h"



#import "UITextField+MyContacts1.h"

@interface MyDetailViewController ()

@end

@implementation MyDetailViewController
@synthesize contactdb;
    NSMutableArray *arrr;

- (void)viewDidLoad
{
    [self.fullname setBorder];
    [self.email setBorder];
    [self.phone setBorder];
    [self.fullname setPadding];
    [self.email setPadding];
    [self.phone setPadding];
   
   
   
//
//    _fullname.layer.borderWidth = 2.0f;
//    _fullname.layer.borderColor = [[UIColor redColor] CGColor];
//    _fullname.layer.cornerRadius = 5;
//    _fullname.clipsToBounds      = YES;
    
    
//    CALayer *border = [CALayer layer];
//    CGFloat borderWidth = 2;
//    border.borderColor = [UIColor grayColor].CGColor;
//    border.frame = CGRectMake(0, _fullname.frame.size.height - borderWidth, _fullname.frame.size.width, _fullname.frame.size.height);
//    border.borderWidth = borderWidth;
//    [_fullname.layer addSublayer:border];
//    _fullname.layer.masksToBounds = YES;
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    if (self.contactdb) {
        [self.fullname setText:[self.contactdb valueForKey:@"fullname"]];
        [self.email setText:[self.contactdb valueForKey:@"email"]];
        [self.phone setText:[self.contactdb valueForKey:@"phone"]];
    }
}
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (self.contactdb) {
        // Update existing device
        [self.contactdb setValue:self.fullname.text forKey:@"fullname"];
        [self.contactdb setValue:self.email.text forKey:@"email"];
        [self.contactdb setValue:self.phone.text forKey:@"phone"];
//        arrr = [NSMutableArray arrayWithObjects:self.contactdb, nil];
//        NSLog(@"%@",arrr.count);
        
        
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:context];
        [newDevice setValue:self.fullname.text forKey:@"fullname"];
        [newDevice setValue:self.email.text forKey:@"email"];
        [newDevice setValue:self.phone.text forKey:@"phone"];
         [arrr addObject:newDevice];
        NSLog(@"the result si %@",newDevice);
        
    }
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end

