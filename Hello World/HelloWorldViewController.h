//
//  HelloWorldViewController.h
//  Hello World
//
//  Created by David Eleazar García Santiago on 06/03/13.
//  Copyright (c) 2013 David Eleazar García Santiago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>
@property (copy, nonatomic) NSString *textTypedInTextField;
@end
