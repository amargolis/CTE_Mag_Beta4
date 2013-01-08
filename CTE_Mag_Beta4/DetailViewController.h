//
//  DetailViewController.h
//  CTE_Mag_Beta4
//
//  Created by Andy Margolis on 12/29/12.
//  Copyright (c) 2012 Northshore Technology Services. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "list.h"

@interface DetailViewController : UIViewController{
    
    
    IBOutlet UILabel *header;
    IBOutlet UILabel *body;
    
}

@property (nonatomic, retain) list *thelist;
@property (strong, nonatomic) IBOutlet UIScrollView *scroller;


@end


