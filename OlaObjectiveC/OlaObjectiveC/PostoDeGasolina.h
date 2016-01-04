//
//  PostoDeGasolina.h
//  OlaObjectiveC
//
//  Created by Jackson F. de A. Mafra on 5/13/13.
//  Copyright (c) 2013 Targettrust Treinamentos e Tecnologia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CombustivelGasolina.h"
#import "CombustivelAlcool.h"

@interface PostoDeGasolina : NSObject
+ (void) abastecerCarroComAlcool:(NSObject<CombustivelAlcool> *) tipoAlccol;
+ (void) abastecerCarroComGasolina:(NSObject<CombustivelGasolina> *) tipoGasolina;
@end
