//
//  RootViewController.m
//  WordPlay
//
//  Created by Alexander Nelson on 1/26/16.
//  Copyright © 2016 218 Apps. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
}




#pragma mark - Navigation

-(void)unwindForSegue:(UIStoryboardSegue *)unwindSegue towardsViewController:(UIViewController *)subsequentVC {
    
}


@end
