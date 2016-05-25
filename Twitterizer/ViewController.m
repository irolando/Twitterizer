//
//  ViewController.m
//  Twitterizer
//
//  Created by Rolando Guerra on 5/25/16.
//  Copyright © 2016 Rolando R Guerra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property NSMutableString *stringNoVowels;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property NSString *countForLabel;
@property NSUInteger count;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)textViewDidChange:(UITextView *)textView{
    [self countText:nil];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    range = NSMakeRange(140, 1);
    text = @"";
    return YES;
}




-(void)countText: (id) sender {
    self.count = self.textView.text.length;
    self.countForLabel = [NSString stringWithFormat:@"%lu", (140 - self.count)];
    self.textLabel.text = self.countForLabel;
}

- (IBAction)onTwitterizePressed:(id)sender {
    NSString *enteredText = self.textView.text;
    
    self.stringNoVowels = [[NSMutableString alloc] init];
    
    for (int i = 0; i < enteredText.length; i++) {
        NSString *vowelsLowercase = @"aeiou";
        NSString *vowelsUppercase = @"AEIOU";
        char letter = [enteredText characterAtIndex: i];
        NSString *letterAsString = [NSString stringWithFormat:@"%c", letter];
        
        if ([vowelsLowercase containsString: letterAsString] || [vowelsUppercase containsString:letterAsString]) {
            continue;
        } else {
            [self.stringNoVowels appendString:letterAsString];
        }
    }
    self.textView.text = self.stringNoVowels;
    
    [self countText:nil];
}

@end
