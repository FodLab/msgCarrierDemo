//
//  PageTwoController.m
//  msgCarrierDemo
//
//  Created by fodlab on 2020/6/22.
//  Copyright © 2020 fodlab. All rights reserved.
//

#import "PageTwoViewController.h"



@interface PageTwoViewController ()

@end

@implementation PageTwoViewController

+ (PageTwoViewController *)instantiateLoginViewController{
    PageTwoViewController *controller = [[PageTwoViewController alloc] initWithNibName:@"PageTwoViewController" bundle:[NSBundle mainBundle]];
    return controller;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Google

/**
 调用Google
 
 */
- (IBAction)googleButtonDidClick:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}


#pragma mark - Facebook

/**
 调用Facebook
 
 */
- (IBAction)facebookButtonDidClick:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}

#pragma mark - Line

/**
 调用line
 
 */
- (IBAction)lineButtonDidClick:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}



@end
