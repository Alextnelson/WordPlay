//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Alexander Nelson on 1/26/16.
//  Copyright © 2016 218 Apps. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Navigation

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adjectiveTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterVerbViewController *nextViewController = [segue destinationViewController];
    nextViewController.name = self.name;
    nextViewController.adjective = self.adjectiveTextField.text;
}


@end
