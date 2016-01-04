//
//  ViewController.m
//  OlaStoryboard
//
//  Created by Jackson F. de A. Mafra on 9/9/13.
//  Copyright (c) 2013 Jackson F. de A. Mafra. All rights reserved.
//

#import "ViewController.h"
#import "tela05.h"


@implementation ViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"irTela05"]) {
        tela05 *tela05 = segue.destinationViewController;
        tela05.titulo = @"Abrir a tela - Via Segue";
    }
}


- (void)fechar:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)pushTela05:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    tela05 *tela05 = [storyboard instantiateViewControllerWithIdentifier:@"tela05"];
    tela05.titulo = @"Abrir a tela - Via Push";
    [self.navigationController pushViewController:tela05 animated:YES];
}

- (IBAction)abreTela05:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    tela05 *tela05 = [sb instantiateViewControllerWithIdentifier:@"tela05"];
    tela05.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    tela05.titulo = @"Abrir a tela - Via Modal";
    tela05.modal = true;
    [self presentViewController:tela05 animated:YES completion:NULL];
}


@end
