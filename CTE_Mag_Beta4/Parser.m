//
//  Parser.m
//  CTE_Mag_Beta4
//
//  Created by Andy Margolis on 12/29/12.
//  Copyright (c) 2012 Northshore Technology Services. All rights reserved.
//

#import "Parser.h"

@implementation Parser

-(id) initParser {
    
    if (self == [super init]) {
        
        app = (AppDelegate *) [[UIApplication sharedApplication]delegate];
        
    }
    return self;
}

-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    
    if([elementName isEqualToString:@"entries"]) {
        
        app.listArray = [[NSMutableArray alloc] init];
    }
    else if([elementName isEqualToString:@"entry"]) {
        
        thelist = [[list alloc] init];
        
        thelist.articleID = [[attributeDict objectForKey:@"id"] integerValue];
    }
    
}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    
    if (!currentElementValue) {
        currentElementValue = [[NSMutableString alloc] initWithString:string];
    }
    else
        [currentElementValue appendString:string];
}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    if ([elementName isEqualToString:@"entries"]) {
        return;
    }
    
    
    if ([elementName isEqualToString:@"entry"]) {
        [app.listArray addObject:thelist];
        
        thelist = nil;
    }
    else
        [thelist setValue:currentElementValue forKey:elementName];
    
    currentElementValue = nil;
    
}




@end
