//
//  CostomCell.m
//  Assignment_NSURLconnection
//
//  Created by Webonise on 16/07/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import "CostomCell.h"

@interface CostomCell ()

@end

@implementation CostomCell
@synthesize lblActivity,lblStatus,lblborrowerCount,lblFundedAmount,lblLoanAmount,lblLoanLocation,lblname;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
@end
