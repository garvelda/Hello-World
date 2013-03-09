//
//  HelloWorldViewController.m
//  Hello World
//
//  Created by David Eleazar García Santiago on 06/03/13.
//  Copyright (c) 2013 David Eleazar García Santiago. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)helloButton:(UIButton *)sender;
- (IBAction)botonBorrar:(UIButton *)sender;
@end

@implementation HelloWorldViewController
- (IBAction)helloButton:(UIButton *)sender {
    self.textTypedInTextField = self.textField.text;
    self.label.text = @"¡Hola ";
    
    if ([self.textField.text isEqual: @""]) {
        self.label.text = [self.label.text stringByAppendingString: @"mundo!"];
    } else {
        self.label.text = [[self.label.text stringByAppendingString:self.textField.text] stringByAppendingString: @"!"];
    }
}

- (IBAction)botonBorrar:(UIButton *)sender {
	self.label.text = @"";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.textField) {
        [textField resignFirstResponder];
    }
    
    return YES;
}
@end
