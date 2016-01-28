//
//  EnterAdverbViewController.m
//  WordPlay
//
//  Created by Alexander Nelson on 1/28/16.
//  Copyright © 2016 218 Apps. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "ResultsViewController.h"

@interface EnterAdverbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;

@end

@implementation EnterAdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adverbTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *nextViewController = [segue destinationViewController];
    nextViewController.name = self.name;
    nextViewController.adjective = self.adjective;
    nextViewController.verb = self.verb;
    nextViewController.adverb = self.adverbTextField.text;
}

@end
