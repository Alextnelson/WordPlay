//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Alexander Nelson on 1/26/16.
//  Copyright © 2016 218 Apps. All rights reserved.
//

#import "ResultsViewController.h"
#import "EnterAdverbViewController.h"
#import <CoreText/CoreText.h>

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.attributedText = [self createStory];
    self.title = @"Your Story";
}

-(NSMutableAttributedString *)createStory {

    NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithAttributedString:[self makeAttributedNotBold:@"One day, "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.name]];
    [story appendAttributedString:[self makeAttributedNotBold:@" walked "]];
    [story appendAttributedString:[self makeAttributedNotBold:@" into Mobile Makers when he noticed how "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.adjective]];
    [story appendAttributedString:[self makeAttributedNotBold:@" the students were and proceeded to "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.verb]];
    [story appendAttributedString:[self makeAttributedNotBold:@" before leaving "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.adverb]];
    [story appendAttributedString:[self makeAttributedNotBold:@" from the building."]];



    return story;
}

-(NSAttributedString *)makeAttributedTextBold:(NSString *)replacedString{

    NSAttributedString *atttString = [[NSAttributedString alloc]initWithString:replacedString
                                                                    attributes:@{NSFontAttributeName : [UIFont fontWithName:@"Helvetica-Bold" size:22.0]}];
    return atttString;

}

-(NSMutableAttributedString *)makeAttributedNotBold:(NSString *)replacedString{
    NSMutableAttributedString * attString = [[NSMutableAttributedString alloc] initWithString:replacedString];

    [attString addAttribute:NSFontAttributeName
                      value:[UIFont fontWithName:@"Helvetica" size:20.0]
                      range:NSMakeRange(0,replacedString.length)];

    return attString;
}

-(NSString* )stringReplacer:(NSRange)range {
    NSString *returnString = [@"" stringByPaddingToLength:range.length withString:@"-" startingAtIndex:0];
    return returnString;
}

@end
