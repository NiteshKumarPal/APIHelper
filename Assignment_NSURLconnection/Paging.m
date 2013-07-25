//
//  Paging.m
//  Assignment_NSURLconnection
//
//  Created by Webonise on 15/07/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import "Paging.h"

@implementation Paging
@synthesize page,total,page_size,pages;

-(id)init{
    page=0;
    total=0;
    page_size=0;
    pages=0;
    return self;
}


@end
