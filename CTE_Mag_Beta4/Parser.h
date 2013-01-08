//
//  Parser.h
//  CTE_Mag_Beta4
//
//  Created by Andy Margolis on 12/29/12.
//  Copyright (c) 2012 Northshore Technology Services. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "list.h"

@interface Parser : NSObject <NSXMLParserDelegate> {
    
    AppDelegate *app;
    list *thelist;
    NSMutableString *currentElementValue;
    
}

-(id)initParser;

@end
