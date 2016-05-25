//
//  ViewController.m
//  Twitterizer
//
//  Created by Rolando Guerra on 5/25/16.
//  Copyright © 2016 Rolando R Guerra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Success!");
   
    NSLog(@"Super Success!");
    
}

- (IBAction)onTwitterizePressed:(id)sender {
    NSString *enteredText = self.textView.text;
    for (int i = 0; i < enteredText.length; i++) {
        NSString *vowels = @"aeiou";
        char letter = [enteredText characterAtIndex:i];
        NSString *letterAsString = [NSString stringWithFormat:@"%@", letter];
        
    }
}


@end
