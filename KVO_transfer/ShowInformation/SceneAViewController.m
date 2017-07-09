//
//  SceneAViewController.m



#import "SceneAViewController.h"
#import "SceneBViewController.h"
#import "MySharedInstance.h"

@implementation SceneAViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   if ([segue.identifier isEqualToString:@"SceneBViewController"]) {
    //......
   
   }
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    MySharedInstance *myIntance = [MySharedInstance sharedInstance];
    
    self.showInformation.text = myIntance.stringPassed;
    
}



@end
