//
//  MasterViewController.h
//  CTE_Mag_Beta4
//
//  Created by Andy Margolis on 12/29/12.
//  Copyright (c) 2012 Northshore Technology Services. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "list.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic, retain) AppDelegate *app;
@property (nonatomic, retain) list *thelist;

@end
