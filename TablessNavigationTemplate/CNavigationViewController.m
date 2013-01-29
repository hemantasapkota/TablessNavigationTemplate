//
//  CNavigationViewController.m
//  TablessNavigationTemplate
//
//  Created by Hemanta Sapkota on 1/27/13.
//  Copyright (c) 2013 Hemanta Sapkota. All rights reserved.
//

#import "CNavigationViewController.h"

@interface CNavigationViewController ()

@end

@implementation CNavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationPortrait;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
