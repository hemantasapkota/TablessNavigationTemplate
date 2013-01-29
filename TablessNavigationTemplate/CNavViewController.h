//
//  CNavViewController.h
//  TablessNavigationTemplate
//
//  Created by Hemanta Sapkota on 1/19/13.
//  Copyright (c) 2013 Hemanta Sapkota. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CNavViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property NSArray *navItems;
@property IBOutlet UITableView *navTableView;

@end


