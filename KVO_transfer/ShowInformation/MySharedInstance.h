//
//  MySharedInstance.h
//  ShowInformation
//
//  Created by lingzhi on 16/6/19.
//  Copyright © 2016年 lingzhi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySharedInstance : NSObject

@property (nonatomic , strong) NSString* stringPassed;

+ (MySharedInstance*)sharedInstance;

@end
