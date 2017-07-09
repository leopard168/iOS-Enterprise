//
//  MySharedInstance.m
//  ShowInformation
//
//  Created by lingzhi on 16/6/19.
//  Copyright © 2016年 lingzhi. All rights reserved.
//

#import "MySharedInstance.h"

@implementation MySharedInstance


+ (MySharedInstance*)sharedInstance {

    // 1
    static MySharedInstance *_sharedInstance = nil;
    
    // 2
    static dispatch_once_t oncePredicate;
    
    // 3
    dispatch_once(&oncePredicate, ^{
        
        //_sharedInstance = [[MySharedInstance alloc] init];
        
        _sharedInstance = [[MySharedInstance alloc] initWithValue:@"Singleton initial Value2"];
    
    });
    return _sharedInstance;

}


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stringPassed = @"Singleton initial Value";
    }
    return self;
}



- (instancetype)initWithValue:(NSString *)str
{
    self = [super init];
    if (self) {
        self.stringPassed = str;
    }
    return self;
}


@end
