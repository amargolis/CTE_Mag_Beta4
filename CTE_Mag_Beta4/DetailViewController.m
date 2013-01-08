//
//  DetailViewController.m
//  CTE_Mag_Beta4
//
//  Created by Andy Margolis on 12/29/12.
//  Copyright (c) 2012 Northshore Technology Services. All rights reserved.
//

#import "DetailViewController.h"


@implementation DetailViewController
@synthesize thelist;
@synthesize scroller;

#pragma mark - Managing the detail item


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"CTE-logo_alpha_orignavbar.png"];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:image];
    
    header.text = thelist.header;
    
    body.text = thelist.body;
  
    header.numberOfLines = 1;
    [header sizeToFit];
    
    body.numberOfLines = 0;
    [body sizeToFit];
    
    scroller.userInteractionEnabled = YES;


}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}
							
@end


