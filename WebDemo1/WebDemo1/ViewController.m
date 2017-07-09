//
//  ViewController.m
//  WebDemo1
//
//  Created by lingzhi on 17/6/29.
//  Copyright © 2017年 ncut. All rights reserved.
//

#import "ViewController.h"

#import <JavaScriptCore/JavaScriptCore.h>


@interface ViewController ()  <UIWebViewDelegate>

@property (nonatomic,strong) UIWebView * myWebView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    self.myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(0,40,320,320)];
    
    self.myWebView.delegate = self;
    
    [self.view addSubview:self.myWebView];
    
   // NSString *pageSource = @"<!DOCTYPE html> <html> <head> </head> <body> <h1>My Mobile App</h1> <p>Please enter the Details</p> <form name=\"feedback\" method=\"post\" action=\"mailto:you@site.com\"> <!-- Form elements will go in here --> </form> <form name=\"inputform\"> <input type=\"button\" onClick=\"submitButton('My Test Parameter')\" value=\"submit\"> </form> </body> </html>";
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    
    NSString * pageSource = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    [self.myWebView loadHTMLString:pageSource baseURL:nil];

}

#pragma mark -- UIWebViewDelegate

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    JSContext *context =  [self.myWebView  valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"]; // Undocumented access
    context[@"submitButton"] = ^(NSString *param1) {
        [self yourObjectiveCMethod:param1];
    };
}

- (void)yourObjectiveCMethod:(NSString *)param1 {
    NSLog(@"User clicked submit. param1=%@", param1);
    
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Data from WebView"
                          message: [NSString stringWithFormat:@"User clicked submit. param1=%@", param1 ]
                          delegate:nil cancelButtonTitle:nil
                          otherButtonTitles:@"OK", nil];
    [alert show];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
