//
//  LavaCar.h
//  OlaObjectiveC
//
//  Created by Jackson F. de A. Mafra on 5/15/13.
//  Copyright (c) 2013 Targettrust Treinamentos e Tecnologia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carro.h"
@interface LavaCar : NSObject
{
    Carro *carro;
}
//- (void) setCarro:(Carro *)_c;
- (void) lavarCarro;
@property (nonatomic, retain) Carro* carro;
@end
