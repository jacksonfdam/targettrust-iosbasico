//
//  tela05.m
//  OlaStoryboard
//
//  Created by Aluno on 26/03/15.
//  Copyright (c) 2015 Jackson F. de A. Mafra. All rights reserved.
//

#import "tela05.h"

@interface tela05 ()

@end

@implementation tela05
/*
 Sobre o ciclo de vida
 https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/index.html
 
 View Controller Programming Guide for iOS
 https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/ViewLoadingandUnloading/ViewLoadingandUnloading.html
 
 UIViewController Class Reference
 https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/index.html
 
 Lifecycle Events
 There are six events that deal with loading views in UIViewController. I have listed them in order below.
 
 loadView
 viewDidLoad
 viewWillAppear
 viewWillLayoutSubviews
 viewDidLayoutSubviews
 viewDidAppear
 But knowing the events in order isn't much help if you don't know what they do. So let's look at how, and when, we should actually use them.
 
 loadView
 
 This event creates the view that the controller manages. It is only called when the view controller is created programmatically. This makes it a good place to create your views in code.
 
 viewDidLoad
 
 The viewDidLoad event is only called when the view is created and loaded into memory. But the bounds for the view are not defined yet. This is a good place to initialize the objects that the view controller is going to use.
 
 viewWillAppear
 
 This event notifies the the view controller whenever the view appears on the screen. In this step the view has bounds that are defined but the orientation is not set.
 
 viewWillLayoutSubviews
 
 This is the first step in the lifecycle where the bounds are finalized. If you are not using constraints or Auto Layout you probably want to update the subviews here.
 
 viewDidLayoutSubviews
 
 This event notifies the view controller that the subviews have been setup. It is a good place to make any changes to the subviews after they have been set.
 
 viewDidAppear
 
 The viewDidAppear event fires after the view is presented on the screen. Which makes it a good place to get data from a backend service or database.
 
 
 
*/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = _titulo;
    _msg.text = _titulo;
    _close.hidden = !_modal;
    
    
}
- (void)fechar:(id)sender {
    //https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/index.html#//apple_ref/occ/instm/UIViewController/dismissViewControllerAnimated:completion:
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_msg release];
    [_close release];
    [super dealloc];
}
@end
