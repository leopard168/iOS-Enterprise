//
//  SceneBViewController.m
//  ShowInformation

#import "SceneBViewController.h"

@interface SceneBViewController ()


@end

@implementation SceneBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
   
    //添加 字典，将label的值通过key值设置传递
    NSDictionary *dict =[[NSDictionary alloc] initWithObjectsAndKeys:self.inputInformation.text,@"value", nil];
    
    //创建通知
    NSNotification *notification =[NSNotification notificationWithName:@"myNotification" object:nil userInfo:dict];
    
    //通过通知中心发送通知
    [[NSNotificationCenter defaultCenter] postNotification:notification];
    
    //[self.navigationController popViewControllerAnimated:YES];
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    
   [textField resignFirstResponder];
    
    return YES;
}

@end
