//
//  ContactViewController.h
//  MyContacts
//
//  Created by Varun Kumar on 21/04/19.
//  Copyright © 2019 Chuck Konkol. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContactViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *fullName;
@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UILabel *number;
@property (strong) NSManagedObject *contactdb;
@property (strong) NSMutableArray *contactarray;


@end

NS_ASSUME_NONNULL_END
