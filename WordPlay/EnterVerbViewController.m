//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Alexander Nelson on 1/28/16.
//  Copyright © 2016 218 Apps. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterAdverbViewController.h"

@interface EnterVerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.verbTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdverbViewController *nextViewController = [segue destinationViewController];
    nextViewController.name = self.name;
    nextViewController.adjective = self.adjective;
    nextViewController.verb = self.verbTextField.text;
}


@end
