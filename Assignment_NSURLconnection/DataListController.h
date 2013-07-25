//
//  DataListController.h
//  Assignment_NSURLconnection
//
//  Created by Webonise on 16/07/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CostomCell.h"
#import "AppDelegate.h"
@interface DataListController : UITableViewController//<APIHelperDelegate>
@property(nonatomic,retain) IBOutlet UITableView *dataTableView;
@property(nonatomic,retain) CostomCell *cell;
@property(nonatomic,retain) AppDelegate *app;
@property(nonatomic,retain) NSArray *arrResponse;
//@property(nonatomic,retain) APIHelper *helper;
@end
