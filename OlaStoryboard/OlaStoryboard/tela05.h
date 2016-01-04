//
//  tela05.h
//  OlaStoryboard
//
//  Created by Aluno on 26/03/15.
//  Copyright (c) 2015 Jackson F. de A. Mafra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tela05 : UIViewController
@property NSString * titulo;
@property bool modal;
@property (retain, nonatomic) IBOutlet UIButton *close;

@property (retain, nonatomic) IBOutlet UILabel *msg;
- (IBAction)fechar:(id)sender;

@end
