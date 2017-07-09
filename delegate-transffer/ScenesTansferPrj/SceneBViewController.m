//
//  SceneBViewController.m
//  ScenesTansferPrj
//
//  Created by He lingzhi on 15/7/14.
//  Copyright (c) 2014 He lingzhi. All rights reserved.
//

#import "SceneBViewController.h"

@interface SceneBViewController ()

@end

@implementation SceneBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
   
    NSLog(@"helz: textFieldShouldReturn reached!") ;
    [textField resignFirstResponder];
   
    if (self.delegate) {
        [self.delegate sceneBViewController:self
                                 didInputed:self.inputInformation.text];
}
    
  [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

return YES;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
