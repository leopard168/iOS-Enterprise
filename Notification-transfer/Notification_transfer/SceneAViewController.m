//
//  SceneAViewController.m



#import "SceneAViewController.h"
#import "SceneBViewController.h"

@implementation SceneAViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   if ([segue.identifier isEqualToString:@"SceneBViewController"]) {
    //......
   
   }
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getNotification:) name:@"myNotification" object:nil];
    
}

- (void)getNotification:(NSNotification *)text{

    self.showInformation.text = text.userInfo[@"value"];
}

@end
