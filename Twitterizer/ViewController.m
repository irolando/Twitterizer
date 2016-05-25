//
//  ViewController.m
//  Twitterizer
//
//  Created by Rolando Guerra on 5/25/16.
//  Copyright © 2016 Rolando R Guerra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property NSMutableString *stringNoVowels;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onTwitterizePressed:(id)sender {
    NSString *enteredText = self.textField.text;
    
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
    
    self.textField.text = self.stringNoVowels;
}


@end
