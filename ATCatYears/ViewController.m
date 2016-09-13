//
//  ViewController.m
//  ATCatYears
//
//  Created by Aashish Tamsya on 14/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self reset];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)reset {
    
    self.labelText.text = @"";
    self.textfieldYears.text = @"";
}

-(void)getCatYears {
    
    if (self.textfieldYears.text.length > 0) {
        int humanYears = self.textfieldYears.text.intValue;
        int catYears = humanYears / 7;
        self.labelText.text = [NSString stringWithFormat:@"Your age in Cat Years is %d.",catYears];
    }
    else {
        NSLog(@"Enter valid number");
    }
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self getCatYears];
    return true;
    
    
}
- (IBAction)calculate:(id)sender {
    [self getCatYears];
}


- (IBAction)clear:(id)sender {
    
    [self reset];
}
@end
