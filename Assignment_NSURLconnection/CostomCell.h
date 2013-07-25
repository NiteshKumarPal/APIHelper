//
//  CostomCell.h
//  Assignment_NSURLconnection
//
//  Created by Webonise on 16/07/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CostomCell : UITableViewCell
@property(nonatomic,retain) IBOutlet UILabel *lblname;
@property(nonatomic,retain) IBOutlet UILabel *lblActivity;
@property(nonatomic,retain) IBOutlet UILabel *lblStatus;
@property(nonatomic,retain) IBOutlet UILabel *lblLoanLocation;
@property(nonatomic,retain) IBOutlet UILabel *lblLoanAmount;
@property(nonatomic,retain) IBOutlet UILabel *lblFundedAmount;
@property(nonatomic,retain) IBOutlet UILabel *lblborrowerCount;
@end
