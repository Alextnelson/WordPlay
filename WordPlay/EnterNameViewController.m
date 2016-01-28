//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Alexander Nelson on 1/26/16.
//  Copyright © 2016 218 Apps. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



#pragma mark - Navigation

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nameTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdjectiveViewController *nextViewController = [segue destinationViewController];
    nextViewController.name = self.nameTextField.text;
}

@end
