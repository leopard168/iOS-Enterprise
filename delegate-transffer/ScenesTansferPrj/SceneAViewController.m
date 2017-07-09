//
//  SceneAViewController.m
//  ScenesTansferPrj
//
//  Created by He lingzhi on 15/7/14.
//  Copyright (c) 2014 He lingzhi. All rights reserved.
//

#import "SceneAViewController.h"
#import "SceneBViewController.h"

@interface SceneAViewController ()

@end

@implementation SceneAViewController

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

#pragma mark -- secneB delegate method
- (void)sceneBViewController:(SceneBViewController *)sceneBVC
                  didInputed:(NSString *)string {
    self.showInformation.text = string;
    
    NSLog(@"delegate method is executed");
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Segue_ID_AB"]) {
        SceneBViewController *sceneBVC = segue.destinationViewController;
        sceneBVC.delegate =self;
        
        NSLog(@"prepare for segue reached!");
    }
}


@end
