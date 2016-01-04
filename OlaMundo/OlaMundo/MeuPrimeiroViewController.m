//
//  MeuPrimeiroViewController.m
//  OlaMundo
//
//  Created by Jackson F. de A. Mafra on 9/8/13.
//  Copyright (c) 2013 Jackson F. de A. Mafra. All rights reserved.
//

#import "MeuPrimeiroViewController.h"

@implementation MeuPrimeiroViewController

#pragma mark - view lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    meuPrimeiroLabel.text = @"Tela iniciada com sucesso!";
}

#pragma mark - métodos
- (void)olaMundo:(id)sender {
    NSLog(@"Olá");
    meuPrimeiroLabel.text = @"Olá Mundo iPhone!";
}

#pragma mark rotation
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

#pragma mark - dealloc
- (void)dealloc {
    [meuPrimeiroLabel release];
	[super dealloc];
}

@end
