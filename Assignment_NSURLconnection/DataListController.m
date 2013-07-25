//
//  DataListController.m
//  Assignment_NSURLconnection
//
//  Created by Webonise on 16/07/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import "DataListController.h"
#import "CostomCell.h"

@interface DataListController ()

@end

@implementation DataListController
@synthesize cell,dataTableView,app,arrResponse;//helper;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
//    helper=[[APIHelper alloc]init];
//    [helper apiCallWithURL:URL withParameters:nil];
//    helper.delegate=self;
    
    self.navigationController.navigationBarHidden = NO;
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

//-(void)apiCallWithResponse:(id)response{
//    NSLog(@"%@",(NSDictionary *)response);
//}
//
//-(void)apiCallWithError:(NSError *)error{
//    NSLog(@"failed");
//}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 196.0f;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [arrResponse count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    cell = (CostomCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        NSArray *nib=[[NSBundle mainBundle] loadNibNamed:@"CostomCell" owner:self options:nil];
        cell=(CostomCell*)[nib objectAtIndex:0];
    }
    
        
    cell.lblname.text=[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.lblStatus.text=[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"status"];
    cell.lblActivity.text=[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"activity"];
    NSString *country=[[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"location"] objectForKey:@"country"];
    NSString *twon=[[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"location"] objectForKey:@"town"];
    
    NSString *location=[NSString stringWithFormat:@"%@ , %@",country,twon];
    cell.lblLoanLocation.text=location;
    NSLog(@"class %@",[[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"loan_amount"] class]);
    cell.lblLoanAmount.text=[NSString stringWithFormat:@"%@",[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"loan_amount"]];
    cell.lblFundedAmount.text=[NSString stringWithFormat:@"%@",[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"funded_amount"]];
    cell.lblborrowerCount.text=[NSString stringWithFormat:@"%@",[[arrResponse objectAtIndex:indexPath.row] objectForKey:@"borrower_count"]];
    
    // Configure the cell...
    
    return cell;
}

@end
