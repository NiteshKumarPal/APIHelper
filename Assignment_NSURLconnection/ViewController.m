//
//  ViewController.m
//  Assignment_NSURLconnection
//  took the help http://mobile.tutsplus.com/tutorials/iphone/ios-sdk_uiactivityindicatorview_mbprogresshud/
//  Created by Webonise on 15/07/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import "ViewController.h"
#import "DataListController.h"

@interface ViewController ()

@end

@implementation ViewController;
@synthesize app,helper,call,timer;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    app=(AppDelegate *)[[UIApplication sharedApplication]delegate];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)apiCall:(UIButton *)sender{
//    [hud showWhileExecuting:@selector(doSomeThing) onTarget:self withObject:nil animated:YES];
//    hud = [[MBProgressHUD alloc] initWithView:self.view];
//    hud.labelText=;
//    [self.view addSubview:hud];
    
    helper = [[APIHelper alloc]init];
    //helper.showProgress=NO;
    [helper apiCallWithURL:URL withParameters:nil withLoadingText:@"Please wait...\nLoading" withView:self.view];
    helper.delegate=self;
    
    
}

//- (void)doSomeThing {
//    float progress = 0.0;
//    while (progress < 1.0) {
//        progress += 0.01;
//        hud.progress = progress;
//        
//    }
//}

- (void)apiCallWithResponse:(id)response{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:NSLocalizedString(@"SUCCESS", nil) delegate:self cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles: nil];
    [alert show];
    [self parseRespone:response]; //use it as per your requirment as i want to pick its loans info .
}

- (void)apiCallWithError:(NSError *)error{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Data not saved" delegate:self cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles: nil];
    [alert show];
}

- (void)parseRespone:(NSDictionary *)respose {
    NSArray *loans = [NSArray arrayWithArray:[respose objectForKey:@"loans"]];
    DataListController *dataListController=[[DataListController alloc] initWithStyle:UITableViewStylePlain];
    dataListController.arrResponse = loans;
    [app.navigationController pushViewController:dataListController animated:YES];
}
@end
