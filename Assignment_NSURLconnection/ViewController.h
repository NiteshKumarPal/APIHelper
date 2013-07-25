//
//  ViewController.h
//  Assignment_NSURLconnection
//
//  Created by Webonise on 15/07/13.
//  Copyright (c) 2013 Webonise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController<APIHelperDelegate>{
    //float   testProgress ;
    //int     progressDir ;
    NSTimer *timer;
}

@property(nonatomic,retain)  NSTimer *timer;
@property(nonatomic,retain) AppDelegate *app;
@property(nonatomic,retain) APIHelper *helper;
@property (nonatomic,retain) IBOutlet UIButton *call;

//@property(nonatomic,retain) MBProgressHUD *hud;
- (void)parseRespone:(NSDictionary *)respose;
- (IBAction)apiCall:(UIButton *)sender;
@end
