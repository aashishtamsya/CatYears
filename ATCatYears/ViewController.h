//
//  ViewController.h
//  ATCatYears
//
//  Created by Aashish Tamsya on 14/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

- (IBAction)calculate:(id)sender;
- (IBAction)clear:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textfieldYears;
@property (weak, nonatomic) IBOutlet UILabel *labelText;

@end

