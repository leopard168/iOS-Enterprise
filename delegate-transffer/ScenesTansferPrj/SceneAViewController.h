//
//  SceneAViewController.h
//  ScenesTansferPrj
//
//  Created by He lingzhi on 15/7/14.
//  Copyright (c) 2014 He lingzhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SceneBViewController.h"

@interface SceneAViewController : UIViewController <SceneBViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *showInformation;

@end
