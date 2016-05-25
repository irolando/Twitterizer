//
//  ViewController.m
//  Twitterizer
//
//  Created by Rolando Guerra on 5/25/16.
//  Copyright © 2016 Rolando R Guerra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onTwitterizePressed:(id)sender {
    NSString *enteredText = self.textField.text;
    for (int i = 0; i < enteredText.length; i++) {
        NSString *vowelsLowercase = @"aeiou";
        NSString *vowelsUppercase = @"AEIOU";
        char letter = [enteredText characterAtIndex: i];
        NSString *letterAsString = [NSString stringWithFormat:@"%c", letter];
        
        NSMutableString *stringNoVowels = [[NSMutableString alloc] init];
        
        if (![vowelsLowercase containsString: letterAsString] || ![vowelsUppercase containsString:letterAsString]) {
            [stringNoVowels insertString:letterAsString atIndex:i];
            NSLog(@"%@", stringNoVowels);
            
        } 

        
    }
}


@end
