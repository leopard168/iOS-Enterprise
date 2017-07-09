//
//  SceneBViewController.m
//  ShowInformation
//
//  Copyright (c) 2014年 Rex Ma. All rights reserved.
//

#import "SceneBViewController.h"

#import "DataModel.h"

@interface SceneBViewController ()


@end

@implementation SceneBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
   
   
    DataModel * data =  [[DataModel alloc] init];
    
    [data setValue: self.inputInformation.text forKey:@"stringPassed"];
    
  
    
    [data addObserver:self forKeyPath:@"stringPassed"
options:NSKeyValueObservingOptionNew context:NULL];
    

    
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    
   [textField resignFirstResponder];
    
    return YES;
}

@end
