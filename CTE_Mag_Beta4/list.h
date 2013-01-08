//
//  list.h
//  CTE_Mag_Beta4
//
//  Created by Andy Margolis on 12/29/12.
//  Copyright (c) 2012 Northshore Technology Services. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface list : NSObject
@property (nonatomic, retain) NSString *header;
@property (nonatomic, retain) NSString *body;
@property (nonatomic, readwrite) NSInteger articleID;

@end
