//
//  DetailViewController.h
//  CTE_Mag_Beta4
//
//  Created by Andy Margolis on 12/29/12.
//  Copyright (c) 2012 Northshore Technology Services. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
