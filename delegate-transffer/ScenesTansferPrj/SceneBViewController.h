//
//  SceneBViewController.h
//  ScenesTansferPrj
//
//  Created by He lingzhi on 15/7/14.
//  Copyright (c) 2014 He lingzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SceneBViewController;



@protocol SceneBViewControllerDelegate <NSObject>



- (void)sceneBViewController:(SceneBViewController *)sceneBVC

                  didInputed:(NSString *)string;



@end



@interface SceneBViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputInformation;

@property (weak, nonatomic) id<SceneBViewControllerDelegate> delegate;

@end
