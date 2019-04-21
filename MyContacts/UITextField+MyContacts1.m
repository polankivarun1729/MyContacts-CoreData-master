//
//  UITextField+MyContacts1.m
//  MyContacts
//
//  Created by Varun Kumar on 21/04/19.
//  Copyright © 2019 Chuck Konkol. All rights reserved.
//

#import "UITextField+MyContacts1.h"

@implementation UITextField (MyContacts1)
-(UIView *)setPadding {
    UIView *padding = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 10, 40)];
    self.leftView = padding;
    return padding;
    
}
-(UITextField *)setBorder{
    
   
    CALayer *border = [CALayer layer];
    CGFloat borderWidth = 2;
    border.borderColor = [UIColor grayColor].CGColor;
    border.frame = CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width, self.frame.size.height);
    border.borderWidth = borderWidth;
    [self.layer addSublayer:border];
    self.layer.masksToBounds = YES;
    
    return self;
}
@end
